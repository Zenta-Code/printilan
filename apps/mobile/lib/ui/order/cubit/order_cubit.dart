import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._client,
    this._joinSocket,
    this._socketClient,
  ) : super(const _Loading());
  final DioClient _client;
  final JoinSocket _joinSocket;
  final SocketClient _socketClient;
  FilePickerResult? result;
  String store = '';

  Future<void> getStore() async {
    emit(const _Loading());
    final data = await _client.getRequest(
      "${ListAPI.store}/list",
      converter: (response) {
        final data = response['data'] as List;
        log.i(data);
        return data.map((e) => Store.fromJson(e)).toList();
      },
    );
    data.fold(
      (l) => emit(const _Failure("Error")),
      (r) => emit(_Success(r)),
    );
  }

  void joinRoom(String storeId) {
    store = storeId;

    _joinSocket.call(storeId);
  }

  void message() {
    _socketClient.message((p0) {
      log.i(p0);
    });
  }

  void order() async {
    if (result == null) {
      return;
    } else if (result != null) {
      List<int> bytes = result!.files.single.bytes!.cast();

      var name =
          "${DateTime.now().millisecondsSinceEpoch}-${result!.files.single.name}";

      FormData formData = FormData.fromMap({
        "userId": getData(MainBoxKeys.user)['_id'],
        "file": MultipartFile.fromBytes(
          bytes,
          filename: name,
        ),
      });

      await _client.postRequest(
        "${ListAPI.document}/upload",
        formData: formData,
        converter: null,
      );
      final user = getData(MainBoxKeys.user);
      log.i(user);
      _socketClient.send(
        store,
        user['_id'],
        store,
        {
          "type": "order",
          "content": {
            "name": user['name'],
            "email": user['email'],
            "phone": user['phone'],
            "address": user['address'],
            "document": name,
          }
        },
      );
    }
  }

  void upload() async {
    result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc'],
      withData: true,
    );
    log.i(result!.names);
  }
}

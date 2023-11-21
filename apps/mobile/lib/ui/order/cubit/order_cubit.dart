import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:sky_printing_domain/usecases/file/get_file_usecase.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._client,
    this._joinSocket,
    this._socketClient,
    this._webViewClient,
    this._getFile,
  ) : super(const _Loading());
  final DioClient _client;
  final JoinSocket _joinSocket;
  final SocketClient _socketClient;
  final WebViewClient _webViewClient;
  final GetFileUseCase _getFile;
  WebViewController? controller;
  String store = '';

  Future<void> getStore() async {
    emit(const _Loading());
    final data = await _client.getRequest(
      "${ListAPI.store}/list",
      converter: (response) {
        final data = response['data'] as List;
        log.i(data);
        final List<StoreEntity> listStore = data
            .map((e) => StoreModel.fromJson(e).toEntity())
            .toList()
            .cast<StoreEntity>();
        return listStore;
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
    emit(const _Loading());
    if (result == null) {
      return;
    } else if (result != null) {
      List<int> bytes = result!.files.single.bytes!.cast();

      FormData formData = FormData.fromMap({
        "userId": getData(MainBoxKeys.user)['_id'],
        "file": MultipartFile.fromBytes(
          bytes,
          filename: result!.files.single.name,
          contentType: MediaType("application", "pdf"),
        ),
      });

      final upload = await _client.postRequest(
        "${ListAPI.document}/upload",
        formData: formData,
        converter: null,
      );
      upload.fold(
        (l) => log.e(l),
        (r) async {
          log.i(r);
          final user = getData(MainBoxKeys.user);
          _socketClient.send(
            SocketParams(
              roomId: store,
              sender: user['_id'],
              receiver: store,
              content: {
                "type": "order",
                "content": {
                  "name": user['name'],
                  "email": user['email'],
                  "phone": user['phone'],
                  "address": user['address'],
                  "document": r['filePath'],
                  "documentId": r['documentId'],
                },
              },
            ),
          );
          final res = await _client.postRequest(
            "${ListAPI.order}/payment",
            data: {
              "transaction_details": {
                "order_id": r['documentId'],
                "gross_amount": 10000
              },
              "credit_card": {"secure": true}
            },
            converter: (response) {
              log.i(response);
              return response;
            },
          );
          res.fold(
            (l) => log.e(l),
            (r) async {
              log.i(r);
              controller = await _webViewClient.loadUrl(
                r['redirect_url'],
              );
            },
          );
          emit(const _Success(
            [],
          ));
        },
      );
    }
  }

  FilePickerResult? result;
  void pickFile() {
    _getFile(
      const GetFileParams(
        allowedExtensions: [
          'pdf',
          'doc',
        ],
      ),
    ).then(
      (value) => value.fold(
        (l) => log.e(l),
        (r) => result = r.result,
      ),
    );
  }
}

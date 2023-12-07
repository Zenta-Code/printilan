import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:http_parser/http_parser.dart';
import 'package:sky_printing/core/app_route.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._client,
    this._joinSocket,
    this._socketClient, 
    this._getFile,
  ) : super(const _Loading());
  final DioClient _client;
  final JoinSocketUsecase _joinSocket;
  final SocketClient _socketClient; 
  final GetFileUseCase _getFile;
  WebViewController? controller;
  String store = '';

  Future<void> getStore() async {
    emit(const _Loading());
    emit(const _Success([]));
  }

  void message() {
    _socketClient.message((p0) {
      log.i(p0);
    });
  }

  void order(
    int copies,
    bool isColor,
    int totalPage,
    StoreEntity selectedStore,
    String serviceName,
    List<BundleEntity> bundle,
    BuildContext context,
  ) async {
    emit(const _Loading());
    if (result == null) {
      return;
    } else if (result != null) {
      List<int> bytes = result!.files.single.bytes!.cast();

      final user = getData<UserEntity>(MainBoxKeys.user);
      FormData formData = FormData.fromMap({
        "userId": getData(MainBoxKeys.user).id,
        "file": MultipartFile.fromBytes(
          bytes,
          filename: result!.files.single.name,
          contentType: MediaType("application", "pdf"),
        ),
        "size": result!.files.single.size,
        "color": isColor,
        "copies": copies,
        "totalPage": totalPage,
      });

      final upload = await _client.postRequest(
        ListAPI.document,
        formData: formData,
        converter: null,
      );
      upload.fold(
        (l) => log.e(l),
        (r) async {
          log.e(r);
          log.f(bundle);
          final storeBundle = bundle
              .where((element) => element.storeId == selectedStore.id)
              .toList();
          log.e(storeBundle);
          final choosenBundle = storeBundle
              .where((element) => element.name == serviceName)
              .toList();
          log.f(choosenBundle);
          final res = await _client.postRequest(
            ListAPI.order,
            data: {
              "userId": user.id,
              "storeId": selectedStore.id,
              "documentId": r['data'].first["_id"],
              "isColor": isColor,
              "bundleId": choosenBundle.first.id,
            },
            converter: (response) {
              log.i(response);
              return response;
            },
          );
          res.fold(
            (l) => log.e(l),
            (r) async {
              log.f(r);
              context.pushNamed(
                Routes.payment.name,
                extra: {
                  "redirectUrl": r["payment"]['redirect_url'],
                  "r" : r,
                  "storeId": selectedStore.id,
                },
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

  void joinRoom(String storeId) {
    store = storeId;

    _joinSocket.call(SocketParams(
      roomId: storeId,
      userId: getData(MainBoxKeys.user).id,
    ));
  }

  void sendOrder(dynamic r, UserEntity user) {
    _socketClient.send(
      SocketParams(
        roomId: store,
        sender: user.id,
        receiver: store,
        content: {
          "type": "order",
          "content": {
            "name": user.name,
            "email": user.email,
            "phone": user.phone,
            "address": AddressModel.fromEntity(user.address!).toJson(),
            "document": r['data'].first["filePath"],
            "documentId": r['data'].first["_id"],
          },
        },
      ),
    );
  }

  FilePickerResult? result;

  void pickFile() {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    _getFile(
      const GetFileParams(
        allowedExtensions: [
          'pdf',
          'doc',
        ],
      ),
    ).then(
      (value) => value.fold((l) => log.e(l), (r) {
        result = r.result;
        safeEmit(
          const _Success(
            [],
          ),
          emit: emit,
          isClosed: isClosed,
        );
      }),
    );
  }

  PDFViewController? pdfViewController;
  void setController(PDFViewController pdfViewController) {
    this.pdfViewController = pdfViewController;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/app_route.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/user/user_entity.dart';
import 'package:sky_printing_domain/usecases/sockets/socket_params.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'payment_cubit.freezed.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> with MainBoxMixin {
  final WebViewClient _webViewClient;
  final SocketClient _socketClient;

  PaymentCubit(
    this._webViewClient,
    this._socketClient,
  ) : super(const _Loading());

  WebViewController? controller;
  dynamic r;
  String? storeId;
  Future<void> createController(
    String url,
    BuildContext context,
  ) async {
    safeEmit(
      const PaymentState.loading(),
      emit: emit,
      isClosed: isClosed,
    );
    controller = await _webViewClient.loadUrl(url, () {
      sendOrder(r, getData<UserEntity>(MainBoxKeys.user), storeId!);
      log.e("ON CALLLLLLLLLLLLLLL");
      leaveRoom(storeId!);
      context.goNamed(Routes.home.name);
      log.e("ON CALLLLLLLLLLLLLLL 22222222");
    });
    if (controller != null) {
      safeEmit(
        PaymentState.success(controller!),
        emit: emit,
        isClosed: isClosed,
      );
    } else {
      safeEmit(const PaymentState.failed(), emit: emit, isClosed: isClosed);
    }
  }

  void sendOrder(dynamic r, UserEntity user, String storeId) {
    _socketClient.send(
      SocketParams(
        roomId: storeId,
        sender: user.id,
        receiver: storeId,
        content: {"type": "order", "content": r['data']},
      ),
    );
  }

  void leaveRoom(String storeId) {
    _socketClient.leave(
      SocketParams(
        roomId: storeId,
        userId: getData<UserEntity>(MainBoxKeys.user).id,
      ),
    );
  }
}

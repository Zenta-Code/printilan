import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._joinSocket,
    this._socketClient,
    this._dioClient,
  ) : super(const _Loading());

  final JoinSocket _joinSocket;
  final SocketClient _socketClient;
  final DioClient _dioClient;
  final List<Order> orderData = [];
  Future<void> fetchData() async {
    emit(const _Loading());
    final store = getData(MainBoxKeys.store);
    final response = await _dioClient.getRequest(
      "${ListAPI.order}/list/${store['_id']}",
      converter: (response) {
        final data = response['data'] as List<dynamic>;
        return data.map((e) => Order.fromJson(e)).toList();
      },
    );
    response.fold((l) => emit(const OrderState.failure("Error")), (r) {
      orderData.addAll(r);
      joinRoom();
      emit(_Success(r));
    });
  }

  Future<void> joinRoom() async {
    emit(const _Loading());
    final store = getData(MainBoxKeys.store);
    log.f("Store: ${store["_id"]}");
    _joinSocket.call(store!['_id']);
    message();
  }

  void message() {
    _socketClient.socket.on('message', (data) async {
      emit(const _Loading());
      final order = Order.fromJson(data["order"]);

      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      final String prettyJson = encoder.convert(data["document"]);
      log.i(prettyJson);
      orderData.add(order);

      final savePath = await getApplicationDocumentsDirectory();
      log.i(savePath.path);

      final res = await _dioClient.downloadRequest(
        "${ListAPI.document}/download/${data["document"]["fileName"]}",
        savePath.path + "/${data["document"]["fileName"]}",
      );
      res.fold(
        (l) => log.i(l),
        (r) => log.i(r),
      );
      emit(_Success(orderData));
    });
  }

  void clearOrder() {
    emit(const _Loading());
    final store = getData(MainBoxKeys.store);
    _dioClient.getRequest(
      "${ListAPI.order}/clear/${store!['_id']}",
      converter: (response) {
        return response;
      },
    );
    orderData.clear();
    emit(_Success(orderData));
  }
}

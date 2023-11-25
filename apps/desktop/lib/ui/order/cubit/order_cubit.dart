import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
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
    this._getOrderByStoreUsecase,
  ) : super(
          const _Loading(),
        );

  final JoinSocket _joinSocket;
  final SocketClient _socketClient;
  final DioClient _dioClient;
  final GetOrderByStoreUsecase _getOrderByStoreUsecase;
  final List<OrderEntity> orderData = [];
  Future<void> fetchData() async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final store = getData(MainBoxKeys.store);

    final response = await _getOrderByStoreUsecase
        .call(GetOrderByStoreParams(storeId: store['_id']));
    final tes = await Printing.listPrinters();
    log.i(tes.last);
    response.fold(
        (l) => safeEmit(
              const OrderState.failure("Error"),
              emit: emit,
              isClosed: isClosed,
            ), (r) {
      orderData.addAll(r);
      joinRoom();
      try {
        safeEmit(
          _Success(r),
          emit: emit,
          isClosed: isClosed,
        );
      } catch (e) {
        log.e(e);
      }
    });
  }

  Future<void> joinRoom() async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final store = getData(MainBoxKeys.store);
    log.f("Store: ${store["_id"]}");
    _joinSocket.call(store!['_id']);
    message();
  }

  void message() {
    _socketClient.socket.on('message', (data) async {
      safeEmit(
        const _Loading(),
        emit: emit,
        isClosed: isClosed,
      );
      log.i(data);
      final order = OrderModel.fromJson(data["order"]).toEntity();

      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      final String prettyJson = encoder.convert(data["document"]);
      log.i(prettyJson);
      orderData.add(order);

      final savePath = await getApplicationDocumentsDirectory();
      log.i(savePath.path);

      // check if sub folder exists
      final path = data["document"]["fileName"].split("/");
      final folder = path[0];
      final userFolder = path[1];
      final fileName = path[2];
      final dir =
          Directory("${savePath.path}/Sky Printing/$folder/$userFolder");
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      try {
        final res = await _dioClient.dio.get(
          "${ListAPI.document}/download/${data["document"]["fileName"]}",
        );
        if (res.data != null) {
          final List<dynamic> bytes = res.data['data']['data'];
          var newBytes = bytes.map((e) => e as int).toList();
          final Uint8List xBytes = Uint8List.fromList(newBytes);
          final file = File("${dir.path}/$fileName");
          file.writeAsBytesSync(newBytes);
          // final jobs = await WindowsPrinting().directPrint(
          //     printerName: "EPSON L3210 Series",
          //     filePath: file.path,
          //     jobName: "Order-$fileName",
          //     copies: 1);
          final jobs = await Printing.directPrintPdf(
              printer: const Printer(url: 'EPSON L3210 Series'),
              onLayout: (format) => xBytes);
          log.i(jobs);
          safeEmit(
            _Success(orderData),
            emit: emit,
            isClosed: isClosed,
          );
        } else {
          log.e('Invalid response or empty data.');
        }
      } catch (e) {
        log.e(e);
      }
    });
  }

  void clearOrder() {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final store = getData(MainBoxKeys.store);
    _dioClient.getRequest(
      "${ListAPI.order}/clear/${store!['_id']}",
      converter: (response) {
        return response;
      },
    );
    orderData.clear();
    safeEmit(
      _Success(orderData),
      emit: emit,
      isClosed: isClosed,
    );
  }
}

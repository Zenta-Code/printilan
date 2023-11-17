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
    final tes = await Printing.listPrinters();
    log.i(tes.last);
    response.fold((l) => emit(const OrderState.failure("Error")), (r) {
      orderData.addAll(r);
      joinRoom();
      try {
        emit(_Success(r));
      } catch (e) {
        log.e(e);
      }
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
      log.i(data);
      final order = Order.fromJson(data["order"]);

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
          emit(_Success(orderData));
        } else {
          log.e('Invalid response or empty data.');
        }
      } catch (e) {
        log.e(e);
      }
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

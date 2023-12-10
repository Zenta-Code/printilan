import 'dart:io';
import 'dart:typed_data';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> with MainBoxMixin {
  OrderCubit(
    this._socketClient,
    this._dioClient,
    this._getOrderByStoreUsecase,
    this._createReportOrderUsecase,
    this._getPrinterByStoreUsecase,
  ) : super(
          const _Loading(),
        );

  final SocketClient _socketClient;
  final DioClient _dioClient;
  final GetOrderByStoreUsecase _getOrderByStoreUsecase;
  final CreateReportOrderUsecase _createReportOrderUsecase;
  final GetPrinterByStoreUsecase _getPrinterByStoreUsecase;

  final List<OrderEntityResponse> orderData = [];
  List<PrinterEntity> printerData = [];

  Future<void> bootStrap() async {
    message();
    await fetchData();
    await fetchPrinter();
  }

  Future<void> fetchPrinter() async {
    final store = getData(MainBoxKeys.store);

    final response = await _getPrinterByStoreUsecase
        .call(GetPrinterByStoreParams(storeId: store.id));

    response.fold((l) {
      if (l is ServerFailure) {}
    }, (r) {
      printerData = r;
    });
  }

  Future<void> fetchData() async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final store = getData(MainBoxKeys.store);

    final response = await _getOrderByStoreUsecase
        .call(GetOrderByStoreParams(storeId: store.id));

    response.fold((l) {
      if (l is ServerFailure) {
        safeEmit(
          _Failure(l.message.toString()),
          emit: emit,
          isClosed: isClosed,
        );
      }
    }, (r) {
      orderData.addAll(r);

      safeEmit(
        _Success(r),
        emit: emit,
        isClosed: isClosed,
      );
    });
  }

  void message() {
    _socketClient.socket.on('message', (data) async {
      safeEmit(
        const _Loading(),
        emit: emit,
        isClosed: isClosed,
      );

      log.e(data);
      final order = OrderModelResponse.fromJson(data["order"]).toEntity();

      orderData.add(order);

      final savePath = await getApplicationDocumentsDirectory();

      final path = data["document"]["filePath"].split("/");
      final folder = path[0];
      final userFolder = path[1];
      final fileName = path[2];
      final dir =
          Directory("${savePath.path}/Sky Printing/$folder/$userFolder");
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      try {
        final res = await _dioClient.getRequest(
          "${ListAPI.document}/download",
          queryParameters: {
            "dir": folder,
            "userId": data["document"]["userId"],
            "fileName": fileName,
          },
          converter: (response) {
            return response;
          },
        );
        res.fold((l) {
          log.e(l);
        }, (success) async {
          // log.e(success);
          if (success != null) {
            final List<dynamic> bytes = success['data']['data'];
            var newBytes = bytes.map((e) => e as int).toList();
            final Uint8List xBytes = Uint8List.fromList(newBytes);
            final file = File("${dir.path}/$fileName");
            file.writeAsBytesSync(newBytes);
            List<bool> jobs = [];
            for (int i = 0; i < order.document!.copies!; i++) {
              final job = await Printing.directPrintPdf(
                // printer: const Printer(url: 'EPSON L3210 Series'),
                printer: Printer(url: printerData.last.printerName!),
                onLayout: (PdfPageFormat format) => xBytes,
                name: fileName,
              );
              jobs.add(job);
            }

            if (jobs.length == order.document!.copies!) {
              safeEmit(
                _Success(orderData),
                emit: emit,
                isClosed: isClosed,
              );
            }
          } else {
            log.e('Invalid response or empty data.');
          }
        });
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
      "${ListAPI.order}/clear/${store!.id}",
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

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  void createReport(
    BuildContext? context,
  ) async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final savePath = await getApplicationDocumentsDirectory();
    final dir = Directory("${savePath.path}/Sky Printing/Report");
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }

    final fineStartDate =
        DateTime(startDate.year, startDate.month, startDate.day);
    final fineEndDate = DateTime(endDate.year, endDate.month, endDate.day);

    final fileName =
        "${fineStartDate.toString().split(" ")[0]}-${fineEndDate.toString().split(" ")[0]}.csv";

    final res = await _createReportOrderUsecase.call(
      CreateReportOrderParams(
        // savePath: "${dir.path}/test.csv",
        savePath: "${dir.path}/$fileName",
        storeId: getData(MainBoxKeys.store)!.id,
        startDate: fineStartDate,
        endDate: fineEndDate,
      ),
    );
    res.fold((failure) {
      log.e(failure);
      if (failure is ServerFailure) {
        displayInfoBar(
          context!,
          builder: (context, close) {
            return InfoBar(
              title: Text("Failed to create report"),
              content: Text(failure.message.toString()),
              severity: InfoBarSeverity.error,
            );
          },
        );
        safeEmit(
          _Success(orderData),
          emit: emit,
          isClosed: isClosed,
        );
      }
    }, (success) async {
      log.e(success);
      displayInfoBar(
        context!,
        builder: (context, close) {
          return InfoBar(
            title: Text("Report created"),
            content: Text("Path: ${dir.path}/$fileName"),
            severity: InfoBarSeverity.success,
          );
        },
      );
      safeEmit(
        _Success(orderData),
        emit: emit,
        isClosed: isClosed,
      );
    });
  }
}

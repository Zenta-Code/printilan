import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/printer/printer_model.dart';
import 'package:windows_printing/windows_printing.dart';
import 'package:windows_printing_models/models/printer.dart';

part 'printer_cubit.freezed.dart';
part 'printer_state.dart';

class PrinterCubit extends Cubit<PrinterState> with MainBoxMixin {
  PrinterCubit(
    this._dioClient,
  ) : super(const _Loading());

  final DioClient _dioClient;

  final List<Printer> _printers = [];

  Future<void> pollingPrinter() async {
    await fetchPrinters();
    await syncPrinter();
    try {
      Stream.periodic(const Duration(minutes: 1), (i) => i)
          .listen((event) async {
        await fetchPrinters();
        await syncPrinter();
      });
      emit(_Success(_printers));
    } catch (e) {
      emit(const _Failure("Error"));
    }
  }

  Future<void> fetchPrinters() async {
    List<Printer>? printers = await WindowsPrinting().getPrinterList();

    if (printers != null) {
      _printers.clear();
      _printers.addAll(
          printers.where((printer) => !printer.printerName!.contains('PDF')));
      safeEmit(
        _printers.isEmpty ? const _Empty() : _Success(_printers),
        emit: emit,
        isClosed: isClosed,
      );
    } else {
      safeEmit(
        const _Empty(),
        emit: emit,
        isClosed: isClosed,
      );
    }
  }

  Future<void> syncPrinter() async {
    final store = getData(MainBoxKeys.store);

    final List<PrinterModel> printers = _printers
        .map((e) => PrinterModel(
              printerName: e.printerName,
              storeId: store.id,
              countJobs: e.cJobs!,
              printerOnline: e.printerOnline!,
            ))
        .toList();
    final response = await _dioClient.postRequest(
      ListAPI.print,
      data: {
        'printers': printers.map((e) => e.toJson()).toList(),
      },
      converter: (response) {},
    );
    await fetchPrinters();
    response.fold(
      (l) => safeEmit(
        _Success(_printers),
        emit: emit,
        isClosed: isClosed,
      ),
      (r) => safeEmit(
        _Success(_printers),
        emit: emit,
        isClosed: isClosed,
      ),
    );
  }
}

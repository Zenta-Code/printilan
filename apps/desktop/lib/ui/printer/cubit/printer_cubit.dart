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

  Future<void> fetchPrinters() async {
    emit(const _Loading());
    List<Printer>? printers = await WindowsPrinting().getPrinterList();

    if (printers != null) {
      _printers.clear();
      _printers.addAll(
          printers.where((printer) => !printer.printerName!.contains('PDF')));
      emit(_printers.isEmpty ? const _Empty() : _Success(_printers));
    } else {
      emit(const _Empty());
    }
  }

  Future<void> syncPrinter() async {
    emit(const _Loading());
    final store = getData(MainBoxKeys.store);
    log.d('store: $store');
    final List<PrinterModel> printers = _printers
        .map((e) => PrinterModel(
              printerName: e.printerName,
              storeId: store['_id'],
              isBusy: e.cJobs! > 0 ? true : false,
            ))
        .toList();
    log.d('${ListAPI.store}/register');
    final response = await _dioClient.postRequest(
      '${ListAPI.print}/register',
      data: {
        'printers': printers.map((e) => e.toJson()).toList(),
      },
      converter: (response) {},
    );
    response.fold(
      (l) => emit(_Success(_printers)),
      (r) => emit(_Success(_printers)),
    );
  }
}

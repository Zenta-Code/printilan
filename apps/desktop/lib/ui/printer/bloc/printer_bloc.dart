import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:windows_printing/windows_printing.dart';
import 'package:windows_printing_models/windows_printing_models.dart';

part 'printer_bloc.freezed.dart';
part 'printer_event.dart';
part 'printer_state.dart';

class PrinterBloc extends Bloc<PrinterEvent, PrinterState> {
  PrinterBloc() : super(const _Loading());

  final List<Printer> _printers = [];

  fetchPrinters() async {
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
}

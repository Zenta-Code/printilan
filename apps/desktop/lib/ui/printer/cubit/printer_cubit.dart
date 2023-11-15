import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:windows_printing/windows_printing.dart';
import 'package:windows_printing_models/models/printer.dart';

part 'printer_state.dart';
part 'printer_cubit.freezed.dart';

class PrinterCubit extends Cubit<PrinterState> {
  PrinterCubit() : super(const _Loading());

final List<Printer> _printers = [];

  Future<void> fetchPrinters( ) async{
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

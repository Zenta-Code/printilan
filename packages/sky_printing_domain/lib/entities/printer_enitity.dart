import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer_enitity.freezed.dart';

@freezed
class PrinterEntity with _$PrinterEntity {
  const factory PrinterEntity({
    String? storeId,
    String? printerName,
    int? countJobs,
    bool? printerOnline,
  }) = _PrinterEntity;
}

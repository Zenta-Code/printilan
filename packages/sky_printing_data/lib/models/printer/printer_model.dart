import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'printer_model.freezed.dart';
part 'printer_model.g.dart';

@freezed
class PrinterModel with _$PrinterModel {
  const factory PrinterModel({
    String? id,
    String? printerName,
    String? storeId,
    int? countJobs,
    bool? printerOnline,
  }) = _PrinterModelImpl;

  const PrinterModel._();
  factory PrinterModel.fromJson(Map<String, dynamic> json) =>
      _$PrinterModelFromJson(json);

  PrinterEntity toEntity() => PrinterEntity(
        printerName: printerName,
        storeId: storeId,
        countJobs: countJobs,
        printerOnline: printerOnline,
      );
}

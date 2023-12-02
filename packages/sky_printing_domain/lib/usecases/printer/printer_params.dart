import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/printer/printer_model.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'printer_params.freezed.dart';
part 'printer_params.g.dart';

@freezed
class GetPrinterByIdParams with _$GetPrinterByIdParams {
  const factory GetPrinterByIdParams({
    @Default(null) String? id,
  }) = _GetPrinterByIdParams;

  factory GetPrinterByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetPrinterByIdParamsFromJson(json);
}

@freezed
class GetPrinterByStoreParams with _$GetPrinterByStoreParams {
  const factory GetPrinterByStoreParams({
    @Default(null) String? storeId,
  }) = _GetPrinterByStoreParams;

  factory GetPrinterByStoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetPrinterByStoreParamsFromJson(json);
}

@freezed
class PostPrinterSyncBulkParams with _$PostPrinterSyncBulkParams {
  const factory PostPrinterSyncBulkParams({
    @Default([]) List<PrinterModel>? printers,
  }) = _PostPrinterSyncBulkParams;

  factory PostPrinterSyncBulkParams.fromJson(Map<String, dynamic> json) =>
      _$PostPrinterSyncBulkParamsFromJson(json);
}

@freezed
class PostPrinterSyncSingleParams with _$PostPrinterSyncSingleParams {
  const factory PostPrinterSyncSingleParams({
    @Default(null) PrinterModel? printer,
  }) = _PostPrinterSyncSingleParams;

  factory PostPrinterSyncSingleParams.fromJson(Map<String, dynamic> json) =>
      _$PostPrinterSyncSingleParamsFromJson(json);
}

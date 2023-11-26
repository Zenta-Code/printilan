// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_printer_sync_bulk_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPrinterSyncBulkParamsImpl _$$PostPrinterSyncBulkParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PostPrinterSyncBulkParamsImpl(
      printers: (json['printers'] as List<dynamic>?)
              ?.map((e) => PrinterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PostPrinterSyncBulkParamsImplToJson(
        _$PostPrinterSyncBulkParamsImpl instance) =>
    <String, dynamic>{
      'printers': instance.printers,
    };

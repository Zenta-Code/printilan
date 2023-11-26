// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_printer_sync_single_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPrinterSyncSingleParamsImpl _$$PostPrinterSyncSingleParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PostPrinterSyncSingleParamsImpl(
      printer: json['printer'] == null
          ? null
          : PrinterModel.fromJson(json['printer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostPrinterSyncSingleParamsImplToJson(
        _$PostPrinterSyncSingleParamsImpl instance) =>
    <String, dynamic>{
      'printer': instance.printer,
    };

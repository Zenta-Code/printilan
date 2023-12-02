// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPrinterByIdParamsImpl _$$GetPrinterByIdParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPrinterByIdParamsImpl(
      id: json['id'] as String? ?? null,
    );

Map<String, dynamic> _$$GetPrinterByIdParamsImplToJson(
        _$GetPrinterByIdParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GetPrinterByStoreParamsImpl _$$GetPrinterByStoreParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPrinterByStoreParamsImpl(
      storeId: json['storeId'] as String? ?? null,
    );

Map<String, dynamic> _$$GetPrinterByStoreParamsImplToJson(
        _$GetPrinterByStoreParamsImpl instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
    };

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

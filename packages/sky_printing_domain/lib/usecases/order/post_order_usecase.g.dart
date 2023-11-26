// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_order_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostOrderParamsImpl _$$PostOrderParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PostOrderParamsImpl(
      copies: json['copies'] as int? ?? 0,
      pages: json['pages'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      storeId: json['storeId'] as String? ?? null,
      userId: json['userId'] as String? ?? null,
      fileName: json['fileName'] as String? ?? null,
      filePath: json['filePath'] as String? ?? null,
      fileType: json['fileType'] as String? ?? null,
      fileExtension: json['fileExtension'] as String? ?? null,
    );

Map<String, dynamic> _$$PostOrderParamsImplToJson(
        _$PostOrderParamsImpl instance) =>
    <String, dynamic>{
      'copies': instance.copies,
      'pages': instance.pages,
      'price': instance.price,
      'storeId': instance.storeId,
      'userId': instance.userId,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'fileType': instance.fileType,
      'fileExtension': instance.fileExtension,
    };

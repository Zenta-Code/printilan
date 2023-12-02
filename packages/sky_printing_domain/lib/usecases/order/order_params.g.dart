// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteOrderByIdParamsImpl _$$DeleteOrderByIdParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteOrderByIdParamsImpl(
      orderId: json['orderId'] as String? ?? null,
    );

Map<String, dynamic> _$$DeleteOrderByIdParamsImplToJson(
        _$DeleteOrderByIdParamsImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
    };

_$GetOrderByIdParamsImpl _$$GetOrderByIdParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderByIdParamsImpl(
      id: json['id'] as String? ?? null,
    );

Map<String, dynamic> _$$GetOrderByIdParamsImplToJson(
        _$GetOrderByIdParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GetOrderByStoreParamsImpl _$$GetOrderByStoreParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderByStoreParamsImpl(
      storeId: json['storeId'] as String? ?? null,
    );

Map<String, dynamic> _$$GetOrderByStoreParamsImplToJson(
        _$GetOrderByStoreParamsImpl instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
    };

_$GetOrderByUserParamsImpl _$$GetOrderByUserParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderByUserParamsImpl(
      userId: json['userId'] as String? ?? null,
    );

Map<String, dynamic> _$$GetOrderByUserParamsImplToJson(
        _$GetOrderByUserParamsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

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

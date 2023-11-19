// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      userId: json['userId'] as String?,
      storeId: json['storeId'] as String?,
      documentId: json['documentId'] as String?,
      totalPrice: json['totalPrice'] as int?,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'storeId': instance.storeId,
      'documentId': instance.documentId,
      'totalPrice': instance.totalPrice,
    };

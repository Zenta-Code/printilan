// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      userId: json['userId'] as String?,
      storeId: json['storeId'] as String?,
      documentId: json['documentId'] as String?,
      totalPrice: json['totalPrice'] as int?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'storeId': instance.storeId,
      'documentId': instance.documentId,
      'totalPrice': instance.totalPrice,
    };

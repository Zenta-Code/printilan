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
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : StoreModel.fromJson(json['store'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : DocumentModel.fromJson(json['document'] as Map<String, dynamic>),
      totalPrice: json['totalPrice'] as int?,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'storeId': instance.storeId,
      'documentId': instance.documentId,
      'user': instance.user,
      'store': instance.store,
      'document': instance.document,
      'totalPrice': instance.totalPrice,
    };

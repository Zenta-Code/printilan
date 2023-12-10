// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      storeId: json['storeId'] as String?,
      documentId: json['documentId'] as String?,
      bundleId: json['bundleId'] as String?,
      isColor: json['isColor'] as bool?,
      status: json['status'] as String?,
      totalPrice: json['totalPrice'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'storeId': instance.storeId,
      'documentId': instance.documentId,
      'bundleId': instance.bundleId,
      'isColor': instance.isColor,
      'status': instance.status,
      'totalPrice': instance.totalPrice,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$OrderModelResponseImpl _$$OrderModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderModelResponseImpl(
      userId: json['userId'] as String?,
      storeId: json['storeId'] as String?,
      documentId: json['documentId'] as String?,
      order: json['order'] == null
          ? null
          : OrderModel.fromJson(json['order'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : StoreModel.fromJson(json['store'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : DocumentModel.fromJson(json['document'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderModelResponseImplToJson(
        _$OrderModelResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'storeId': instance.storeId,
      'documentId': instance.documentId,
      'order': instance.order,
      'user': instance.user,
      'store': instance.store,
      'document': instance.document,
    };

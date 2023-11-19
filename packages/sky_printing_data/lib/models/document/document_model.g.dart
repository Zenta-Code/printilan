// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      count: json['count'] as int?,
      size: json['size'] as String?,
      color: json['color'] as bool?,
      price: json['price'] as int?,
      copies: json['copies'] as int?,
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'count': instance.count,
      'size': instance.size,
      'color': instance.color,
      'price': instance.price,
      'copies': instance.copies,
    };

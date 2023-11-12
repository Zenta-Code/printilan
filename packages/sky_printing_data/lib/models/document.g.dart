// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      count: json['count'] as int?,
      size: json['size'] as String?,
      color: json['color'] as bool?,
      price: json['price'] as int?,
      copies: json['copies'] as int?,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'count': instance.count,
      'size': instance.size,
      'color': instance.color,
      'price': instance.price,
      'copies': instance.copies,
    };

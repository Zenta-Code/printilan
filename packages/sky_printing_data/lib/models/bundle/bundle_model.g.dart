// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BundleModelImpl _$$BundleModelImplFromJson(Map<String, dynamic> json) =>
    _$BundleModelImpl(
      id: json['_id'] as String?,
      storeId: json['storeId'] as String?,
      name: json['name'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => BundleOptionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BundleModelImplToJson(_$BundleModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'storeId': instance.storeId,
      'name': instance.name,
      'options': instance.options,
    };

_$BundleOptionsModelImpl _$$BundleOptionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BundleOptionsModelImpl(
      color: json['color'] as bool?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$BundleOptionsModelImplToJson(
        _$BundleOptionsModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'price': instance.price,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BundleModelImpl _$$BundleModelImplFromJson(Map<String, dynamic> json) =>
    _$BundleModelImpl(
      storeId: json['storeId'] as String?,
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      prices: json['prices'] as List<dynamic>?,
    );

Map<String, dynamic> _$$BundleModelImplToJson(_$BundleModelImpl instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'name': instance.name,
      'desc': instance.desc,
      'prices': instance.prices,
    };

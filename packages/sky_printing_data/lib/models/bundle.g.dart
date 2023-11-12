// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BundleImpl _$$BundleImplFromJson(Map<String, dynamic> json) => _$BundleImpl(
      storeId: json['storeId'] as String?,
      name: json['name'] as String?,
      desc: json['desc'] as String?,
      prices: json['prices'] as List<dynamic>?,
    );

Map<String, dynamic> _$$BundleImplToJson(_$BundleImpl instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'name': instance.name,
      'desc': instance.desc,
      'prices': instance.prices,
    };

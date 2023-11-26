// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_file_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFileParamsImpl _$$GetFileParamsImplFromJson(Map<String, dynamic> json) =>
    _$GetFileParamsImpl(
      allowedExtensions: (json['allowedExtensions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetFileParamsImplToJson(_$GetFileParamsImpl instance) =>
    <String, dynamic>{
      'allowedExtensions': instance.allowedExtensions,
    };

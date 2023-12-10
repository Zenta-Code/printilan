// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      id: json['_id'] as String?,
      fileName: json['fileName'] as String?,
      filePath: json['filePath'] as String?,
      type: json['type'] as String?,
      totalPage: json['totalPage'] as int?,
      size: json['size'] as String?,
      color: json['color'] as bool?,
      copies: json['copies'] as int?,
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'type': instance.type,
      'totalPage': instance.totalPage,
      'size': instance.size,
      'color': instance.color,
      'copies': instance.copies,
    };

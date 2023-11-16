// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      id: json['id'] as int?,
      token: json['token'] as String?,
      error: json['error'] as String?,
      user: json['user'],
      store: json['store'],
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'error': instance.error,
      'user': instance.user,
      'store': instance.store,
    };

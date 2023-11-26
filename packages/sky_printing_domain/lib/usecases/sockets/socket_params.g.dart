// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketParamsImpl _$$SocketParamsImplFromJson(Map<String, dynamic> json) =>
    _$SocketParamsImpl(
      roomId: json['roomId'] as String? ?? null,
      storeId: json['storeId'] as String? ?? null,
      userId: json['userId'] as String? ?? null,
      sender: json['sender'] as String? ?? null,
      receiver: json['receiver'] as String? ?? null,
      content: json['content'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$SocketParamsImplToJson(_$SocketParamsImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'storeId': instance.storeId,
      'userId': instance.userId,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'content': instance.content,
    };

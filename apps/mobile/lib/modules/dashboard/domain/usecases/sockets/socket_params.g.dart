// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketParamsImpl _$$SocketParamsImplFromJson(Map<String, dynamic> json) =>
    _$SocketParamsImpl(
      roomId: json['roomId'] as String? ?? "",
      sender: json['sender'] as String? ?? "",
      receiver: json['receiver'] as String? ?? "",
      content: json['content'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$SocketParamsImplToJson(_$SocketParamsImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'content': instance.content,
    };

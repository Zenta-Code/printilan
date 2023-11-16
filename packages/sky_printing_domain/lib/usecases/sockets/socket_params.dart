import 'package:freezed_annotation/freezed_annotation.dart';
 
part 'socket_params.freezed.dart';
part 'socket_params.g.dart';

@freezed
class SocketParams with _$SocketParams {
  const factory SocketParams({
    @Default("") String roomId,
    @Default("") String sender,
    @Default("") String receiver,
    @Default({}) Map<String, dynamic> content,
  }) = _SocketParams;

  factory SocketParams.fromJson(Map<String, dynamic> json) =>
      _$SocketParamsFromJson(json);
}

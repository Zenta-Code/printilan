import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_params.freezed.dart';
part 'socket_params.g.dart';

@freezed
class SocketParams with _$SocketParams {
  const factory SocketParams({
    @Default(null) String? roomId,
    @Default(null) String? storeId,
    @Default(null) String? userId,
    @Default(null) String? sender,
    @Default(null) String? receiver,
    @Default({}) Map<String, dynamic> content,
  }) = _SocketParams;

  factory SocketParams.fromJson(Map<String, dynamic> json) =>
      _$SocketParamsFromJson(json);
}

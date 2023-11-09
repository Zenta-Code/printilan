// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketParams _$SocketParamsFromJson(Map<String, dynamic> json) {
  return _SocketParams.fromJson(json);
}

/// @nodoc
mixin _$SocketParams {
  String get roomId => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  Map<String, dynamic> get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketParamsCopyWith<SocketParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketParamsCopyWith<$Res> {
  factory $SocketParamsCopyWith(
          SocketParams value, $Res Function(SocketParams) then) =
      _$SocketParamsCopyWithImpl<$Res, SocketParams>;
  @useResult
  $Res call(
      {String roomId,
      String sender,
      String receiver,
      Map<String, dynamic> content});
}

/// @nodoc
class _$SocketParamsCopyWithImpl<$Res, $Val extends SocketParams>
    implements $SocketParamsCopyWith<$Res> {
  _$SocketParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? sender = null,
    Object? receiver = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketParamsImplCopyWith<$Res>
    implements $SocketParamsCopyWith<$Res> {
  factory _$$SocketParamsImplCopyWith(
          _$SocketParamsImpl value, $Res Function(_$SocketParamsImpl) then) =
      __$$SocketParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomId,
      String sender,
      String receiver,
      Map<String, dynamic> content});
}

/// @nodoc
class __$$SocketParamsImplCopyWithImpl<$Res>
    extends _$SocketParamsCopyWithImpl<$Res, _$SocketParamsImpl>
    implements _$$SocketParamsImplCopyWith<$Res> {
  __$$SocketParamsImplCopyWithImpl(
      _$SocketParamsImpl _value, $Res Function(_$SocketParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? sender = null,
    Object? receiver = null,
    Object? content = null,
  }) {
    return _then(_$SocketParamsImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketParamsImpl implements _SocketParams {
  const _$SocketParamsImpl(
      {this.roomId = "",
      this.sender = "",
      this.receiver = "",
      final Map<String, dynamic> content = const {}})
      : _content = content;

  factory _$SocketParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketParamsImplFromJson(json);

  @override
  @JsonKey()
  final String roomId;
  @override
  @JsonKey()
  final String sender;
  @override
  @JsonKey()
  final String receiver;
  final Map<String, dynamic> _content;
  @override
  @JsonKey()
  Map<String, dynamic> get content {
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_content);
  }

  @override
  String toString() {
    return 'SocketParams(roomId: $roomId, sender: $sender, receiver: $receiver, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketParamsImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, sender, receiver,
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketParamsImplCopyWith<_$SocketParamsImpl> get copyWith =>
      __$$SocketParamsImplCopyWithImpl<_$SocketParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketParamsImplToJson(
      this,
    );
  }
}

abstract class _SocketParams implements SocketParams {
  const factory _SocketParams(
      {final String roomId,
      final String sender,
      final String receiver,
      final Map<String, dynamic> content}) = _$SocketParamsImpl;

  factory _SocketParams.fromJson(Map<String, dynamic> json) =
      _$SocketParamsImpl.fromJson;

  @override
  String get roomId;
  @override
  String get sender;
  @override
  String get receiver;
  @override
  Map<String, dynamic> get content;
  @override
  @JsonKey(ignore: true)
  _$$SocketParamsImplCopyWith<_$SocketParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

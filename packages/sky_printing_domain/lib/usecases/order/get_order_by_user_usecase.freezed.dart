// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_by_user_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOrderByUserParams _$GetOrderByUserParamsFromJson(Map<String, dynamic> json) {
  return _GetOrderByUserParams.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByUserParams {
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderByUserParamsCopyWith<GetOrderByUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByUserParamsCopyWith<$Res> {
  factory $GetOrderByUserParamsCopyWith(GetOrderByUserParams value,
          $Res Function(GetOrderByUserParams) then) =
      _$GetOrderByUserParamsCopyWithImpl<$Res, GetOrderByUserParams>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class _$GetOrderByUserParamsCopyWithImpl<$Res,
        $Val extends GetOrderByUserParams>
    implements $GetOrderByUserParamsCopyWith<$Res> {
  _$GetOrderByUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrderByUserParamsImplCopyWith<$Res>
    implements $GetOrderByUserParamsCopyWith<$Res> {
  factory _$$GetOrderByUserParamsImplCopyWith(_$GetOrderByUserParamsImpl value,
          $Res Function(_$GetOrderByUserParamsImpl) then) =
      __$$GetOrderByUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$GetOrderByUserParamsImplCopyWithImpl<$Res>
    extends _$GetOrderByUserParamsCopyWithImpl<$Res, _$GetOrderByUserParamsImpl>
    implements _$$GetOrderByUserParamsImplCopyWith<$Res> {
  __$$GetOrderByUserParamsImplCopyWithImpl(_$GetOrderByUserParamsImpl _value,
      $Res Function(_$GetOrderByUserParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$GetOrderByUserParamsImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByUserParamsImpl implements _GetOrderByUserParams {
  const _$GetOrderByUserParamsImpl({this.userId = null});

  factory _$GetOrderByUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByUserParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? userId;

  @override
  String toString() {
    return 'GetOrderByUserParams(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByUserParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByUserParamsImplCopyWith<_$GetOrderByUserParamsImpl>
      get copyWith =>
          __$$GetOrderByUserParamsImplCopyWithImpl<_$GetOrderByUserParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByUserParamsImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByUserParams implements GetOrderByUserParams {
  const factory _GetOrderByUserParams({final String? userId}) =
      _$GetOrderByUserParamsImpl;

  factory _GetOrderByUserParams.fromJson(Map<String, dynamic> json) =
      _$GetOrderByUserParamsImpl.fromJson;

  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderByUserParamsImplCopyWith<_$GetOrderByUserParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

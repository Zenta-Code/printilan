// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_order_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteOrderByIdParams _$DeleteOrderByIdParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteOrderByIdParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteOrderByIdParams {
  String? get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteOrderByIdParamsCopyWith<DeleteOrderByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteOrderByIdParamsCopyWith<$Res> {
  factory $DeleteOrderByIdParamsCopyWith(DeleteOrderByIdParams value,
          $Res Function(DeleteOrderByIdParams) then) =
      _$DeleteOrderByIdParamsCopyWithImpl<$Res, DeleteOrderByIdParams>;
  @useResult
  $Res call({String? orderId});
}

/// @nodoc
class _$DeleteOrderByIdParamsCopyWithImpl<$Res,
        $Val extends DeleteOrderByIdParams>
    implements $DeleteOrderByIdParamsCopyWith<$Res> {
  _$DeleteOrderByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteOrderByIdParamsImplCopyWith<$Res>
    implements $DeleteOrderByIdParamsCopyWith<$Res> {
  factory _$$DeleteOrderByIdParamsImplCopyWith(
          _$DeleteOrderByIdParamsImpl value,
          $Res Function(_$DeleteOrderByIdParamsImpl) then) =
      __$$DeleteOrderByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? orderId});
}

/// @nodoc
class __$$DeleteOrderByIdParamsImplCopyWithImpl<$Res>
    extends _$DeleteOrderByIdParamsCopyWithImpl<$Res,
        _$DeleteOrderByIdParamsImpl>
    implements _$$DeleteOrderByIdParamsImplCopyWith<$Res> {
  __$$DeleteOrderByIdParamsImplCopyWithImpl(_$DeleteOrderByIdParamsImpl _value,
      $Res Function(_$DeleteOrderByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_$DeleteOrderByIdParamsImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteOrderByIdParamsImpl implements _DeleteOrderByIdParams {
  const _$DeleteOrderByIdParamsImpl({this.orderId = null});

  factory _$DeleteOrderByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteOrderByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? orderId;

  @override
  String toString() {
    return 'DeleteOrderByIdParams(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOrderByIdParamsImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOrderByIdParamsImplCopyWith<_$DeleteOrderByIdParamsImpl>
      get copyWith => __$$DeleteOrderByIdParamsImplCopyWithImpl<
          _$DeleteOrderByIdParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteOrderByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteOrderByIdParams implements DeleteOrderByIdParams {
  const factory _DeleteOrderByIdParams({final String? orderId}) =
      _$DeleteOrderByIdParamsImpl;

  factory _DeleteOrderByIdParams.fromJson(Map<String, dynamic> json) =
      _$DeleteOrderByIdParamsImpl.fromJson;

  @override
  String? get orderId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteOrderByIdParamsImplCopyWith<_$DeleteOrderByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

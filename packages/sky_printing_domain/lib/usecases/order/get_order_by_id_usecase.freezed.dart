// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOrderByIdParams _$GetOrderByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetOrderByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByIdParams {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderByIdParamsCopyWith<GetOrderByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByIdParamsCopyWith<$Res> {
  factory $GetOrderByIdParamsCopyWith(
          GetOrderByIdParams value, $Res Function(GetOrderByIdParams) then) =
      _$GetOrderByIdParamsCopyWithImpl<$Res, GetOrderByIdParams>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GetOrderByIdParamsCopyWithImpl<$Res, $Val extends GetOrderByIdParams>
    implements $GetOrderByIdParamsCopyWith<$Res> {
  _$GetOrderByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrderByIdParamsImplCopyWith<$Res>
    implements $GetOrderByIdParamsCopyWith<$Res> {
  factory _$$GetOrderByIdParamsImplCopyWith(_$GetOrderByIdParamsImpl value,
          $Res Function(_$GetOrderByIdParamsImpl) then) =
      __$$GetOrderByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetOrderByIdParamsImplCopyWithImpl<$Res>
    extends _$GetOrderByIdParamsCopyWithImpl<$Res, _$GetOrderByIdParamsImpl>
    implements _$$GetOrderByIdParamsImplCopyWith<$Res> {
  __$$GetOrderByIdParamsImplCopyWithImpl(_$GetOrderByIdParamsImpl _value,
      $Res Function(_$GetOrderByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetOrderByIdParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByIdParamsImpl implements _GetOrderByIdParams {
  const _$GetOrderByIdParamsImpl({this.id = null});

  factory _$GetOrderByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'GetOrderByIdParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByIdParamsImplCopyWith<_$GetOrderByIdParamsImpl> get copyWith =>
      __$$GetOrderByIdParamsImplCopyWithImpl<_$GetOrderByIdParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByIdParams implements GetOrderByIdParams {
  const factory _GetOrderByIdParams({final String? id}) =
      _$GetOrderByIdParamsImpl;

  factory _GetOrderByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetOrderByIdParamsImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderByIdParamsImplCopyWith<_$GetOrderByIdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

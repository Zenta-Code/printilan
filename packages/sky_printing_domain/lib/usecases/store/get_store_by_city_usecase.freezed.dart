// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_store_by_city_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStoreByCityParams _$GetStoreByCityParamsFromJson(Map<String, dynamic> json) {
  return _GetStoreByCityParams.fromJson(json);
}

/// @nodoc
mixin _$GetStoreByCityParams {
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStoreByCityParamsCopyWith<GetStoreByCityParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoreByCityParamsCopyWith<$Res> {
  factory $GetStoreByCityParamsCopyWith(GetStoreByCityParams value,
          $Res Function(GetStoreByCityParams) then) =
      _$GetStoreByCityParamsCopyWithImpl<$Res, GetStoreByCityParams>;
  @useResult
  $Res call({String? city});
}

/// @nodoc
class _$GetStoreByCityParamsCopyWithImpl<$Res,
        $Val extends GetStoreByCityParams>
    implements $GetStoreByCityParamsCopyWith<$Res> {
  _$GetStoreByCityParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStoreByCityParamsImplCopyWith<$Res>
    implements $GetStoreByCityParamsCopyWith<$Res> {
  factory _$$GetStoreByCityParamsImplCopyWith(_$GetStoreByCityParamsImpl value,
          $Res Function(_$GetStoreByCityParamsImpl) then) =
      __$$GetStoreByCityParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? city});
}

/// @nodoc
class __$$GetStoreByCityParamsImplCopyWithImpl<$Res>
    extends _$GetStoreByCityParamsCopyWithImpl<$Res, _$GetStoreByCityParamsImpl>
    implements _$$GetStoreByCityParamsImplCopyWith<$Res> {
  __$$GetStoreByCityParamsImplCopyWithImpl(_$GetStoreByCityParamsImpl _value,
      $Res Function(_$GetStoreByCityParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_$GetStoreByCityParamsImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStoreByCityParamsImpl implements _GetStoreByCityParams {
  const _$GetStoreByCityParamsImpl({this.city = null});

  factory _$GetStoreByCityParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStoreByCityParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? city;

  @override
  String toString() {
    return 'GetStoreByCityParams(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoreByCityParamsImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoreByCityParamsImplCopyWith<_$GetStoreByCityParamsImpl>
      get copyWith =>
          __$$GetStoreByCityParamsImplCopyWithImpl<_$GetStoreByCityParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStoreByCityParamsImplToJson(
      this,
    );
  }
}

abstract class _GetStoreByCityParams implements GetStoreByCityParams {
  const factory _GetStoreByCityParams({final String? city}) =
      _$GetStoreByCityParamsImpl;

  factory _GetStoreByCityParams.fromJson(Map<String, dynamic> json) =
      _$GetStoreByCityParamsImpl.fromJson;

  @override
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$GetStoreByCityParamsImplCopyWith<_$GetStoreByCityParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

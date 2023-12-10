// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDistrictByPostalCodeParams _$GetDistrictByPostalCodeParamsFromJson(
    Map<String, dynamic> json) {
  return _GetDistrictByPostalCodeParams.fromJson(json);
}

/// @nodoc
mixin _$GetDistrictByPostalCodeParams {
  int? get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDistrictByPostalCodeParamsCopyWith<GetDistrictByPostalCodeParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDistrictByPostalCodeParamsCopyWith<$Res> {
  factory $GetDistrictByPostalCodeParamsCopyWith(
          GetDistrictByPostalCodeParams value,
          $Res Function(GetDistrictByPostalCodeParams) then) =
      _$GetDistrictByPostalCodeParamsCopyWithImpl<$Res,
          GetDistrictByPostalCodeParams>;
  @useResult
  $Res call({int? postalCode});
}

/// @nodoc
class _$GetDistrictByPostalCodeParamsCopyWithImpl<$Res,
        $Val extends GetDistrictByPostalCodeParams>
    implements $GetDistrictByPostalCodeParamsCopyWith<$Res> {
  _$GetDistrictByPostalCodeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDistrictByPostalCodeParamsImplCopyWith<$Res>
    implements $GetDistrictByPostalCodeParamsCopyWith<$Res> {
  factory _$$GetDistrictByPostalCodeParamsImplCopyWith(
          _$GetDistrictByPostalCodeParamsImpl value,
          $Res Function(_$GetDistrictByPostalCodeParamsImpl) then) =
      __$$GetDistrictByPostalCodeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? postalCode});
}

/// @nodoc
class __$$GetDistrictByPostalCodeParamsImplCopyWithImpl<$Res>
    extends _$GetDistrictByPostalCodeParamsCopyWithImpl<$Res,
        _$GetDistrictByPostalCodeParamsImpl>
    implements _$$GetDistrictByPostalCodeParamsImplCopyWith<$Res> {
  __$$GetDistrictByPostalCodeParamsImplCopyWithImpl(
      _$GetDistrictByPostalCodeParamsImpl _value,
      $Res Function(_$GetDistrictByPostalCodeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalCode = freezed,
  }) {
    return _then(_$GetDistrictByPostalCodeParamsImpl(
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDistrictByPostalCodeParamsImpl
    implements _GetDistrictByPostalCodeParams {
  const _$GetDistrictByPostalCodeParamsImpl({this.postalCode = null});

  factory _$GetDistrictByPostalCodeParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDistrictByPostalCodeParamsImplFromJson(json);

  @override
  @JsonKey()
  final int? postalCode;

  @override
  String toString() {
    return 'GetDistrictByPostalCodeParams(postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDistrictByPostalCodeParamsImpl &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDistrictByPostalCodeParamsImplCopyWith<
          _$GetDistrictByPostalCodeParamsImpl>
      get copyWith => __$$GetDistrictByPostalCodeParamsImplCopyWithImpl<
          _$GetDistrictByPostalCodeParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDistrictByPostalCodeParamsImplToJson(
      this,
    );
  }
}

abstract class _GetDistrictByPostalCodeParams
    implements GetDistrictByPostalCodeParams {
  const factory _GetDistrictByPostalCodeParams({final int? postalCode}) =
      _$GetDistrictByPostalCodeParamsImpl;

  factory _GetDistrictByPostalCodeParams.fromJson(Map<String, dynamic> json) =
      _$GetDistrictByPostalCodeParamsImpl.fromJson;

  @override
  int? get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$GetDistrictByPostalCodeParamsImplCopyWith<
          _$GetDistrictByPostalCodeParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

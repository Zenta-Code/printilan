// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bundle_by_name_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBundleByNameParams _$GetBundleByNameParamsFromJson(
    Map<String, dynamic> json) {
  return _GetBundleByNameParams.fromJson(json);
}

/// @nodoc
mixin _$GetBundleByNameParams {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBundleByNameParamsCopyWith<GetBundleByNameParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBundleByNameParamsCopyWith<$Res> {
  factory $GetBundleByNameParamsCopyWith(GetBundleByNameParams value,
          $Res Function(GetBundleByNameParams) then) =
      _$GetBundleByNameParamsCopyWithImpl<$Res, GetBundleByNameParams>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$GetBundleByNameParamsCopyWithImpl<$Res,
        $Val extends GetBundleByNameParams>
    implements $GetBundleByNameParamsCopyWith<$Res> {
  _$GetBundleByNameParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBundleByNameParamsImplCopyWith<$Res>
    implements $GetBundleByNameParamsCopyWith<$Res> {
  factory _$$GetBundleByNameParamsImplCopyWith(
          _$GetBundleByNameParamsImpl value,
          $Res Function(_$GetBundleByNameParamsImpl) then) =
      __$$GetBundleByNameParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$GetBundleByNameParamsImplCopyWithImpl<$Res>
    extends _$GetBundleByNameParamsCopyWithImpl<$Res,
        _$GetBundleByNameParamsImpl>
    implements _$$GetBundleByNameParamsImplCopyWith<$Res> {
  __$$GetBundleByNameParamsImplCopyWithImpl(_$GetBundleByNameParamsImpl _value,
      $Res Function(_$GetBundleByNameParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GetBundleByNameParamsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBundleByNameParamsImpl implements _GetBundleByNameParams {
  const _$GetBundleByNameParamsImpl({this.name = null});

  factory _$GetBundleByNameParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBundleByNameParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? name;

  @override
  String toString() {
    return 'GetBundleByNameParams(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBundleByNameParamsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBundleByNameParamsImplCopyWith<_$GetBundleByNameParamsImpl>
      get copyWith => __$$GetBundleByNameParamsImplCopyWithImpl<
          _$GetBundleByNameParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBundleByNameParamsImplToJson(
      this,
    );
  }
}

abstract class _GetBundleByNameParams implements GetBundleByNameParams {
  const factory _GetBundleByNameParams({final String? name}) =
      _$GetBundleByNameParamsImpl;

  factory _GetBundleByNameParams.fromJson(Map<String, dynamic> json) =
      _$GetBundleByNameParamsImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GetBundleByNameParamsImplCopyWith<_$GetBundleByNameParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_store_by_name_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStoreByNameParams _$GetStoreByNameParamsFromJson(Map<String, dynamic> json) {
  return _GetStoreByNameParams.fromJson(json);
}

/// @nodoc
mixin _$GetStoreByNameParams {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStoreByNameParamsCopyWith<GetStoreByNameParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoreByNameParamsCopyWith<$Res> {
  factory $GetStoreByNameParamsCopyWith(GetStoreByNameParams value,
          $Res Function(GetStoreByNameParams) then) =
      _$GetStoreByNameParamsCopyWithImpl<$Res, GetStoreByNameParams>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$GetStoreByNameParamsCopyWithImpl<$Res,
        $Val extends GetStoreByNameParams>
    implements $GetStoreByNameParamsCopyWith<$Res> {
  _$GetStoreByNameParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetStoreByNameParamsImplCopyWith<$Res>
    implements $GetStoreByNameParamsCopyWith<$Res> {
  factory _$$GetStoreByNameParamsImplCopyWith(_$GetStoreByNameParamsImpl value,
          $Res Function(_$GetStoreByNameParamsImpl) then) =
      __$$GetStoreByNameParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$GetStoreByNameParamsImplCopyWithImpl<$Res>
    extends _$GetStoreByNameParamsCopyWithImpl<$Res, _$GetStoreByNameParamsImpl>
    implements _$$GetStoreByNameParamsImplCopyWith<$Res> {
  __$$GetStoreByNameParamsImplCopyWithImpl(_$GetStoreByNameParamsImpl _value,
      $Res Function(_$GetStoreByNameParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GetStoreByNameParamsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStoreByNameParamsImpl implements _GetStoreByNameParams {
  const _$GetStoreByNameParamsImpl({this.name = null});

  factory _$GetStoreByNameParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStoreByNameParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? name;

  @override
  String toString() {
    return 'GetStoreByNameParams(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoreByNameParamsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoreByNameParamsImplCopyWith<_$GetStoreByNameParamsImpl>
      get copyWith =>
          __$$GetStoreByNameParamsImplCopyWithImpl<_$GetStoreByNameParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStoreByNameParamsImplToJson(
      this,
    );
  }
}

abstract class _GetStoreByNameParams implements GetStoreByNameParams {
  const factory _GetStoreByNameParams({final String? name}) =
      _$GetStoreByNameParamsImpl;

  factory _GetStoreByNameParams.fromJson(Map<String, dynamic> json) =
      _$GetStoreByNameParamsImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GetStoreByNameParamsImplCopyWith<_$GetStoreByNameParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bundle_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBundleByIdParams _$GetBundleByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetBundleByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetBundleByIdParams {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBundleByIdParamsCopyWith<GetBundleByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBundleByIdParamsCopyWith<$Res> {
  factory $GetBundleByIdParamsCopyWith(
          GetBundleByIdParams value, $Res Function(GetBundleByIdParams) then) =
      _$GetBundleByIdParamsCopyWithImpl<$Res, GetBundleByIdParams>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GetBundleByIdParamsCopyWithImpl<$Res, $Val extends GetBundleByIdParams>
    implements $GetBundleByIdParamsCopyWith<$Res> {
  _$GetBundleByIdParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetBundleByIdParamsImplCopyWith<$Res>
    implements $GetBundleByIdParamsCopyWith<$Res> {
  factory _$$GetBundleByIdParamsImplCopyWith(_$GetBundleByIdParamsImpl value,
          $Res Function(_$GetBundleByIdParamsImpl) then) =
      __$$GetBundleByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetBundleByIdParamsImplCopyWithImpl<$Res>
    extends _$GetBundleByIdParamsCopyWithImpl<$Res, _$GetBundleByIdParamsImpl>
    implements _$$GetBundleByIdParamsImplCopyWith<$Res> {
  __$$GetBundleByIdParamsImplCopyWithImpl(_$GetBundleByIdParamsImpl _value,
      $Res Function(_$GetBundleByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetBundleByIdParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBundleByIdParamsImpl implements _GetBundleByIdParams {
  const _$GetBundleByIdParamsImpl({this.id = null});

  factory _$GetBundleByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBundleByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'GetBundleByIdParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBundleByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBundleByIdParamsImplCopyWith<_$GetBundleByIdParamsImpl> get copyWith =>
      __$$GetBundleByIdParamsImplCopyWithImpl<_$GetBundleByIdParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBundleByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetBundleByIdParams implements GetBundleByIdParams {
  const factory _GetBundleByIdParams({final String? id}) =
      _$GetBundleByIdParamsImpl;

  factory _GetBundleByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetBundleByIdParamsImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetBundleByIdParamsImplCopyWith<_$GetBundleByIdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

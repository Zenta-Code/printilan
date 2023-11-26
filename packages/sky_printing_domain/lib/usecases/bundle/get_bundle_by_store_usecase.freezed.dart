// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bundle_by_store_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBundleByStoreParams _$GetBundleByStoreParamsFromJson(
    Map<String, dynamic> json) {
  return _GetBundleByStoreParams.fromJson(json);
}

/// @nodoc
mixin _$GetBundleByStoreParams {
  String? get storeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBundleByStoreParamsCopyWith<GetBundleByStoreParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBundleByStoreParamsCopyWith<$Res> {
  factory $GetBundleByStoreParamsCopyWith(GetBundleByStoreParams value,
          $Res Function(GetBundleByStoreParams) then) =
      _$GetBundleByStoreParamsCopyWithImpl<$Res, GetBundleByStoreParams>;
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class _$GetBundleByStoreParamsCopyWithImpl<$Res,
        $Val extends GetBundleByStoreParams>
    implements $GetBundleByStoreParamsCopyWith<$Res> {
  _$GetBundleByStoreParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBundleByStoreParamsImplCopyWith<$Res>
    implements $GetBundleByStoreParamsCopyWith<$Res> {
  factory _$$GetBundleByStoreParamsImplCopyWith(
          _$GetBundleByStoreParamsImpl value,
          $Res Function(_$GetBundleByStoreParamsImpl) then) =
      __$$GetBundleByStoreParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class __$$GetBundleByStoreParamsImplCopyWithImpl<$Res>
    extends _$GetBundleByStoreParamsCopyWithImpl<$Res,
        _$GetBundleByStoreParamsImpl>
    implements _$$GetBundleByStoreParamsImplCopyWith<$Res> {
  __$$GetBundleByStoreParamsImplCopyWithImpl(
      _$GetBundleByStoreParamsImpl _value,
      $Res Function(_$GetBundleByStoreParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_$GetBundleByStoreParamsImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBundleByStoreParamsImpl implements _GetBundleByStoreParams {
  const _$GetBundleByStoreParamsImpl({this.storeId = null});

  factory _$GetBundleByStoreParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBundleByStoreParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? storeId;

  @override
  String toString() {
    return 'GetBundleByStoreParams(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBundleByStoreParamsImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBundleByStoreParamsImplCopyWith<_$GetBundleByStoreParamsImpl>
      get copyWith => __$$GetBundleByStoreParamsImplCopyWithImpl<
          _$GetBundleByStoreParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBundleByStoreParamsImplToJson(
      this,
    );
  }
}

abstract class _GetBundleByStoreParams implements GetBundleByStoreParams {
  const factory _GetBundleByStoreParams({final String? storeId}) =
      _$GetBundleByStoreParamsImpl;

  factory _GetBundleByStoreParams.fromJson(Map<String, dynamic> json) =
      _$GetBundleByStoreParamsImpl.fromJson;

  @override
  String? get storeId;
  @override
  @JsonKey(ignore: true)
  _$$GetBundleByStoreParamsImplCopyWith<_$GetBundleByStoreParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_by_store_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOrderByStoreParams _$GetOrderByStoreParamsFromJson(
    Map<String, dynamic> json) {
  return _GetOrderByStoreParams.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByStoreParams {
  String? get storeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderByStoreParamsCopyWith<GetOrderByStoreParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByStoreParamsCopyWith<$Res> {
  factory $GetOrderByStoreParamsCopyWith(GetOrderByStoreParams value,
          $Res Function(GetOrderByStoreParams) then) =
      _$GetOrderByStoreParamsCopyWithImpl<$Res, GetOrderByStoreParams>;
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class _$GetOrderByStoreParamsCopyWithImpl<$Res,
        $Val extends GetOrderByStoreParams>
    implements $GetOrderByStoreParamsCopyWith<$Res> {
  _$GetOrderByStoreParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetOrderByStoreParamsImplCopyWith<$Res>
    implements $GetOrderByStoreParamsCopyWith<$Res> {
  factory _$$GetOrderByStoreParamsImplCopyWith(
          _$GetOrderByStoreParamsImpl value,
          $Res Function(_$GetOrderByStoreParamsImpl) then) =
      __$$GetOrderByStoreParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class __$$GetOrderByStoreParamsImplCopyWithImpl<$Res>
    extends _$GetOrderByStoreParamsCopyWithImpl<$Res,
        _$GetOrderByStoreParamsImpl>
    implements _$$GetOrderByStoreParamsImplCopyWith<$Res> {
  __$$GetOrderByStoreParamsImplCopyWithImpl(_$GetOrderByStoreParamsImpl _value,
      $Res Function(_$GetOrderByStoreParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_$GetOrderByStoreParamsImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByStoreParamsImpl implements _GetOrderByStoreParams {
  const _$GetOrderByStoreParamsImpl({this.storeId = null});

  factory _$GetOrderByStoreParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByStoreParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? storeId;

  @override
  String toString() {
    return 'GetOrderByStoreParams(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByStoreParamsImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByStoreParamsImplCopyWith<_$GetOrderByStoreParamsImpl>
      get copyWith => __$$GetOrderByStoreParamsImplCopyWithImpl<
          _$GetOrderByStoreParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByStoreParamsImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByStoreParams implements GetOrderByStoreParams {
  const factory _GetOrderByStoreParams({final String? storeId}) =
      _$GetOrderByStoreParamsImpl;

  factory _GetOrderByStoreParams.fromJson(Map<String, dynamic> json) =
      _$GetOrderByStoreParamsImpl.fromJson;

  @override
  String? get storeId;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderByStoreParamsImplCopyWith<_$GetOrderByStoreParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_printer_by_store_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPrinterByStoreParams _$GetPrinterByStoreParamsFromJson(
    Map<String, dynamic> json) {
  return _GetPrinterByStoreParams.fromJson(json);
}

/// @nodoc
mixin _$GetPrinterByStoreParams {
  String? get storeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPrinterByStoreParamsCopyWith<GetPrinterByStoreParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPrinterByStoreParamsCopyWith<$Res> {
  factory $GetPrinterByStoreParamsCopyWith(GetPrinterByStoreParams value,
          $Res Function(GetPrinterByStoreParams) then) =
      _$GetPrinterByStoreParamsCopyWithImpl<$Res, GetPrinterByStoreParams>;
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class _$GetPrinterByStoreParamsCopyWithImpl<$Res,
        $Val extends GetPrinterByStoreParams>
    implements $GetPrinterByStoreParamsCopyWith<$Res> {
  _$GetPrinterByStoreParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPrinterByStoreParamsImplCopyWith<$Res>
    implements $GetPrinterByStoreParamsCopyWith<$Res> {
  factory _$$GetPrinterByStoreParamsImplCopyWith(
          _$GetPrinterByStoreParamsImpl value,
          $Res Function(_$GetPrinterByStoreParamsImpl) then) =
      __$$GetPrinterByStoreParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class __$$GetPrinterByStoreParamsImplCopyWithImpl<$Res>
    extends _$GetPrinterByStoreParamsCopyWithImpl<$Res,
        _$GetPrinterByStoreParamsImpl>
    implements _$$GetPrinterByStoreParamsImplCopyWith<$Res> {
  __$$GetPrinterByStoreParamsImplCopyWithImpl(
      _$GetPrinterByStoreParamsImpl _value,
      $Res Function(_$GetPrinterByStoreParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_$GetPrinterByStoreParamsImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPrinterByStoreParamsImpl implements _GetPrinterByStoreParams {
  const _$GetPrinterByStoreParamsImpl({this.storeId = null});

  factory _$GetPrinterByStoreParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPrinterByStoreParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? storeId;

  @override
  String toString() {
    return 'GetPrinterByStoreParams(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrinterByStoreParamsImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPrinterByStoreParamsImplCopyWith<_$GetPrinterByStoreParamsImpl>
      get copyWith => __$$GetPrinterByStoreParamsImplCopyWithImpl<
          _$GetPrinterByStoreParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPrinterByStoreParamsImplToJson(
      this,
    );
  }
}

abstract class _GetPrinterByStoreParams implements GetPrinterByStoreParams {
  const factory _GetPrinterByStoreParams({final String? storeId}) =
      _$GetPrinterByStoreParamsImpl;

  factory _GetPrinterByStoreParams.fromJson(Map<String, dynamic> json) =
      _$GetPrinterByStoreParamsImpl.fromJson;

  @override
  String? get storeId;
  @override
  @JsonKey(ignore: true)
  _$$GetPrinterByStoreParamsImplCopyWith<_$GetPrinterByStoreParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_printer_sync_bulk_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostPrinterSyncBulkParams _$PostPrinterSyncBulkParamsFromJson(
    Map<String, dynamic> json) {
  return _PostPrinterSyncBulkParams.fromJson(json);
}

/// @nodoc
mixin _$PostPrinterSyncBulkParams {
  List<PrinterModel>? get printers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostPrinterSyncBulkParamsCopyWith<PostPrinterSyncBulkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPrinterSyncBulkParamsCopyWith<$Res> {
  factory $PostPrinterSyncBulkParamsCopyWith(PostPrinterSyncBulkParams value,
          $Res Function(PostPrinterSyncBulkParams) then) =
      _$PostPrinterSyncBulkParamsCopyWithImpl<$Res, PostPrinterSyncBulkParams>;
  @useResult
  $Res call({List<PrinterModel>? printers});
}

/// @nodoc
class _$PostPrinterSyncBulkParamsCopyWithImpl<$Res,
        $Val extends PostPrinterSyncBulkParams>
    implements $PostPrinterSyncBulkParamsCopyWith<$Res> {
  _$PostPrinterSyncBulkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printers = freezed,
  }) {
    return _then(_value.copyWith(
      printers: freezed == printers
          ? _value.printers
          : printers // ignore: cast_nullable_to_non_nullable
              as List<PrinterModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPrinterSyncBulkParamsImplCopyWith<$Res>
    implements $PostPrinterSyncBulkParamsCopyWith<$Res> {
  factory _$$PostPrinterSyncBulkParamsImplCopyWith(
          _$PostPrinterSyncBulkParamsImpl value,
          $Res Function(_$PostPrinterSyncBulkParamsImpl) then) =
      __$$PostPrinterSyncBulkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PrinterModel>? printers});
}

/// @nodoc
class __$$PostPrinterSyncBulkParamsImplCopyWithImpl<$Res>
    extends _$PostPrinterSyncBulkParamsCopyWithImpl<$Res,
        _$PostPrinterSyncBulkParamsImpl>
    implements _$$PostPrinterSyncBulkParamsImplCopyWith<$Res> {
  __$$PostPrinterSyncBulkParamsImplCopyWithImpl(
      _$PostPrinterSyncBulkParamsImpl _value,
      $Res Function(_$PostPrinterSyncBulkParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printers = freezed,
  }) {
    return _then(_$PostPrinterSyncBulkParamsImpl(
      printers: freezed == printers
          ? _value._printers
          : printers // ignore: cast_nullable_to_non_nullable
              as List<PrinterModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPrinterSyncBulkParamsImpl implements _PostPrinterSyncBulkParams {
  const _$PostPrinterSyncBulkParamsImpl(
      {final List<PrinterModel>? printers = const []})
      : _printers = printers;

  factory _$PostPrinterSyncBulkParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPrinterSyncBulkParamsImplFromJson(json);

  final List<PrinterModel>? _printers;
  @override
  @JsonKey()
  List<PrinterModel>? get printers {
    final value = _printers;
    if (value == null) return null;
    if (_printers is EqualUnmodifiableListView) return _printers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostPrinterSyncBulkParams(printers: $printers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPrinterSyncBulkParamsImpl &&
            const DeepCollectionEquality().equals(other._printers, _printers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_printers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPrinterSyncBulkParamsImplCopyWith<_$PostPrinterSyncBulkParamsImpl>
      get copyWith => __$$PostPrinterSyncBulkParamsImplCopyWithImpl<
          _$PostPrinterSyncBulkParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPrinterSyncBulkParamsImplToJson(
      this,
    );
  }
}

abstract class _PostPrinterSyncBulkParams implements PostPrinterSyncBulkParams {
  const factory _PostPrinterSyncBulkParams(
      {final List<PrinterModel>? printers}) = _$PostPrinterSyncBulkParamsImpl;

  factory _PostPrinterSyncBulkParams.fromJson(Map<String, dynamic> json) =
      _$PostPrinterSyncBulkParamsImpl.fromJson;

  @override
  List<PrinterModel>? get printers;
  @override
  @JsonKey(ignore: true)
  _$$PostPrinterSyncBulkParamsImplCopyWith<_$PostPrinterSyncBulkParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

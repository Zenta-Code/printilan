// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_printer_sync_single_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostPrinterSyncSingleParams _$PostPrinterSyncSingleParamsFromJson(
    Map<String, dynamic> json) {
  return _PostPrinterSyncSingleParams.fromJson(json);
}

/// @nodoc
mixin _$PostPrinterSyncSingleParams {
  PrinterModel? get printer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostPrinterSyncSingleParamsCopyWith<PostPrinterSyncSingleParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPrinterSyncSingleParamsCopyWith<$Res> {
  factory $PostPrinterSyncSingleParamsCopyWith(
          PostPrinterSyncSingleParams value,
          $Res Function(PostPrinterSyncSingleParams) then) =
      _$PostPrinterSyncSingleParamsCopyWithImpl<$Res,
          PostPrinterSyncSingleParams>;
  @useResult
  $Res call({PrinterModel? printer});

  $PrinterModelCopyWith<$Res>? get printer;
}

/// @nodoc
class _$PostPrinterSyncSingleParamsCopyWithImpl<$Res,
        $Val extends PostPrinterSyncSingleParams>
    implements $PostPrinterSyncSingleParamsCopyWith<$Res> {
  _$PostPrinterSyncSingleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printer = freezed,
  }) {
    return _then(_value.copyWith(
      printer: freezed == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as PrinterModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrinterModelCopyWith<$Res>? get printer {
    if (_value.printer == null) {
      return null;
    }

    return $PrinterModelCopyWith<$Res>(_value.printer!, (value) {
      return _then(_value.copyWith(printer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostPrinterSyncSingleParamsImplCopyWith<$Res>
    implements $PostPrinterSyncSingleParamsCopyWith<$Res> {
  factory _$$PostPrinterSyncSingleParamsImplCopyWith(
          _$PostPrinterSyncSingleParamsImpl value,
          $Res Function(_$PostPrinterSyncSingleParamsImpl) then) =
      __$$PostPrinterSyncSingleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrinterModel? printer});

  @override
  $PrinterModelCopyWith<$Res>? get printer;
}

/// @nodoc
class __$$PostPrinterSyncSingleParamsImplCopyWithImpl<$Res>
    extends _$PostPrinterSyncSingleParamsCopyWithImpl<$Res,
        _$PostPrinterSyncSingleParamsImpl>
    implements _$$PostPrinterSyncSingleParamsImplCopyWith<$Res> {
  __$$PostPrinterSyncSingleParamsImplCopyWithImpl(
      _$PostPrinterSyncSingleParamsImpl _value,
      $Res Function(_$PostPrinterSyncSingleParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printer = freezed,
  }) {
    return _then(_$PostPrinterSyncSingleParamsImpl(
      printer: freezed == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as PrinterModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPrinterSyncSingleParamsImpl
    implements _PostPrinterSyncSingleParams {
  const _$PostPrinterSyncSingleParamsImpl({this.printer = null});

  factory _$PostPrinterSyncSingleParamsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostPrinterSyncSingleParamsImplFromJson(json);

  @override
  @JsonKey()
  final PrinterModel? printer;

  @override
  String toString() {
    return 'PostPrinterSyncSingleParams(printer: $printer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPrinterSyncSingleParamsImpl &&
            (identical(other.printer, printer) || other.printer == printer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, printer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPrinterSyncSingleParamsImplCopyWith<_$PostPrinterSyncSingleParamsImpl>
      get copyWith => __$$PostPrinterSyncSingleParamsImplCopyWithImpl<
          _$PostPrinterSyncSingleParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPrinterSyncSingleParamsImplToJson(
      this,
    );
  }
}

abstract class _PostPrinterSyncSingleParams
    implements PostPrinterSyncSingleParams {
  const factory _PostPrinterSyncSingleParams({final PrinterModel? printer}) =
      _$PostPrinterSyncSingleParamsImpl;

  factory _PostPrinterSyncSingleParams.fromJson(Map<String, dynamic> json) =
      _$PostPrinterSyncSingleParamsImpl.fromJson;

  @override
  PrinterModel? get printer;
  @override
  @JsonKey(ignore: true)
  _$$PostPrinterSyncSingleParamsImplCopyWith<_$PostPrinterSyncSingleParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

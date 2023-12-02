// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_enitity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrinterEntity {
  String? get storeId => throw _privateConstructorUsedError;
  String? get printerName => throw _privateConstructorUsedError;
  int? get countJobs => throw _privateConstructorUsedError;
  bool? get printerOnline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrinterEntityCopyWith<PrinterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterEntityCopyWith<$Res> {
  factory $PrinterEntityCopyWith(
          PrinterEntity value, $Res Function(PrinterEntity) then) =
      _$PrinterEntityCopyWithImpl<$Res, PrinterEntity>;
  @useResult
  $Res call(
      {String? storeId,
      String? printerName,
      int? countJobs,
      bool? printerOnline});
}

/// @nodoc
class _$PrinterEntityCopyWithImpl<$Res, $Val extends PrinterEntity>
    implements $PrinterEntityCopyWith<$Res> {
  _$PrinterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? printerName = freezed,
    Object? countJobs = freezed,
    Object? printerOnline = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      printerName: freezed == printerName
          ? _value.printerName
          : printerName // ignore: cast_nullable_to_non_nullable
              as String?,
      countJobs: freezed == countJobs
          ? _value.countJobs
          : countJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      printerOnline: freezed == printerOnline
          ? _value.printerOnline
          : printerOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrinterEntityImplCopyWith<$Res>
    implements $PrinterEntityCopyWith<$Res> {
  factory _$$PrinterEntityImplCopyWith(
          _$PrinterEntityImpl value, $Res Function(_$PrinterEntityImpl) then) =
      __$$PrinterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? storeId,
      String? printerName,
      int? countJobs,
      bool? printerOnline});
}

/// @nodoc
class __$$PrinterEntityImplCopyWithImpl<$Res>
    extends _$PrinterEntityCopyWithImpl<$Res, _$PrinterEntityImpl>
    implements _$$PrinterEntityImplCopyWith<$Res> {
  __$$PrinterEntityImplCopyWithImpl(
      _$PrinterEntityImpl _value, $Res Function(_$PrinterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? printerName = freezed,
    Object? countJobs = freezed,
    Object? printerOnline = freezed,
  }) {
    return _then(_$PrinterEntityImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      printerName: freezed == printerName
          ? _value.printerName
          : printerName // ignore: cast_nullable_to_non_nullable
              as String?,
      countJobs: freezed == countJobs
          ? _value.countJobs
          : countJobs // ignore: cast_nullable_to_non_nullable
              as int?,
      printerOnline: freezed == printerOnline
          ? _value.printerOnline
          : printerOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$PrinterEntityImpl implements _PrinterEntity {
  const _$PrinterEntityImpl(
      {this.storeId, this.printerName, this.countJobs, this.printerOnline});

  @override
  final String? storeId;
  @override
  final String? printerName;
  @override
  final int? countJobs;
  @override
  final bool? printerOnline;

  @override
  String toString() {
    return 'PrinterEntity(storeId: $storeId, printerName: $printerName, countJobs: $countJobs, printerOnline: $printerOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterEntityImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.printerName, printerName) ||
                other.printerName == printerName) &&
            (identical(other.countJobs, countJobs) ||
                other.countJobs == countJobs) &&
            (identical(other.printerOnline, printerOnline) ||
                other.printerOnline == printerOnline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, storeId, printerName, countJobs, printerOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterEntityImplCopyWith<_$PrinterEntityImpl> get copyWith =>
      __$$PrinterEntityImplCopyWithImpl<_$PrinterEntityImpl>(this, _$identity);
}

abstract class _PrinterEntity implements PrinterEntity {
  const factory _PrinterEntity(
      {final String? storeId,
      final String? printerName,
      final int? countJobs,
      final bool? printerOnline}) = _$PrinterEntityImpl;

  @override
  String? get storeId;
  @override
  String? get printerName;
  @override
  int? get countJobs;
  @override
  bool? get printerOnline;
  @override
  @JsonKey(ignore: true)
  _$$PrinterEntityImplCopyWith<_$PrinterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrinterModel _$PrinterModelFromJson(Map<String, dynamic> json) {
  return _PrinterModelImpl.fromJson(json);
}

/// @nodoc
mixin _$PrinterModel {
  String? get id => throw _privateConstructorUsedError;
  String? get printerName => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  int? get countJobs => throw _privateConstructorUsedError;
  bool? get printerOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrinterModelCopyWith<PrinterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterModelCopyWith<$Res> {
  factory $PrinterModelCopyWith(
          PrinterModel value, $Res Function(PrinterModel) then) =
      _$PrinterModelCopyWithImpl<$Res, PrinterModel>;
  @useResult
  $Res call(
      {String? id,
      String? printerName,
      String? storeId,
      int? countJobs,
      bool? printerOnline});
}

/// @nodoc
class _$PrinterModelCopyWithImpl<$Res, $Val extends PrinterModel>
    implements $PrinterModelCopyWith<$Res> {
  _$PrinterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? printerName = freezed,
    Object? storeId = freezed,
    Object? countJobs = freezed,
    Object? printerOnline = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      printerName: freezed == printerName
          ? _value.printerName
          : printerName // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PrinterModelImplImplCopyWith<$Res>
    implements $PrinterModelCopyWith<$Res> {
  factory _$$PrinterModelImplImplCopyWith(_$PrinterModelImplImpl value,
          $Res Function(_$PrinterModelImplImpl) then) =
      __$$PrinterModelImplImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? printerName,
      String? storeId,
      int? countJobs,
      bool? printerOnline});
}

/// @nodoc
class __$$PrinterModelImplImplCopyWithImpl<$Res>
    extends _$PrinterModelCopyWithImpl<$Res, _$PrinterModelImplImpl>
    implements _$$PrinterModelImplImplCopyWith<$Res> {
  __$$PrinterModelImplImplCopyWithImpl(_$PrinterModelImplImpl _value,
      $Res Function(_$PrinterModelImplImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? printerName = freezed,
    Object? storeId = freezed,
    Object? countJobs = freezed,
    Object? printerOnline = freezed,
  }) {
    return _then(_$PrinterModelImplImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      printerName: freezed == printerName
          ? _value.printerName
          : printerName // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$PrinterModelImplImpl extends _PrinterModelImpl {
  const _$PrinterModelImplImpl(
      {this.id,
      this.printerName,
      this.storeId,
      this.countJobs,
      this.printerOnline})
      : super._();

  factory _$PrinterModelImplImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrinterModelImplImplFromJson(json);

  @override
  final String? id;
  @override
  final String? printerName;
  @override
  final String? storeId;
  @override
  final int? countJobs;
  @override
  final bool? printerOnline;

  @override
  String toString() {
    return 'PrinterModel(id: $id, printerName: $printerName, storeId: $storeId, countJobs: $countJobs, printerOnline: $printerOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterModelImplImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.printerName, printerName) ||
                other.printerName == printerName) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.countJobs, countJobs) ||
                other.countJobs == countJobs) &&
            (identical(other.printerOnline, printerOnline) ||
                other.printerOnline == printerOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, printerName, storeId, countJobs, printerOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterModelImplImplCopyWith<_$PrinterModelImplImpl> get copyWith =>
      __$$PrinterModelImplImplCopyWithImpl<_$PrinterModelImplImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrinterModelImplImplToJson(
      this,
    );
  }
}

abstract class _PrinterModelImpl extends PrinterModel {
  const factory _PrinterModelImpl(
      {final String? id,
      final String? printerName,
      final String? storeId,
      final int? countJobs,
      final bool? printerOnline}) = _$PrinterModelImplImpl;
  const _PrinterModelImpl._() : super._();

  factory _PrinterModelImpl.fromJson(Map<String, dynamic> json) =
      _$PrinterModelImplImpl.fromJson;

  @override
  String? get id;
  @override
  String? get printerName;
  @override
  String? get storeId;
  @override
  int? get countJobs;
  @override
  bool? get printerOnline;
  @override
  @JsonKey(ignore: true)
  _$$PrinterModelImplImplCopyWith<_$PrinterModelImplImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

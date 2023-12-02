// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPrinterByIdParams _$GetPrinterByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetPrinterByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetPrinterByIdParams {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPrinterByIdParamsCopyWith<GetPrinterByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPrinterByIdParamsCopyWith<$Res> {
  factory $GetPrinterByIdParamsCopyWith(GetPrinterByIdParams value,
          $Res Function(GetPrinterByIdParams) then) =
      _$GetPrinterByIdParamsCopyWithImpl<$Res, GetPrinterByIdParams>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GetPrinterByIdParamsCopyWithImpl<$Res,
        $Val extends GetPrinterByIdParams>
    implements $GetPrinterByIdParamsCopyWith<$Res> {
  _$GetPrinterByIdParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPrinterByIdParamsImplCopyWith<$Res>
    implements $GetPrinterByIdParamsCopyWith<$Res> {
  factory _$$GetPrinterByIdParamsImplCopyWith(_$GetPrinterByIdParamsImpl value,
          $Res Function(_$GetPrinterByIdParamsImpl) then) =
      __$$GetPrinterByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetPrinterByIdParamsImplCopyWithImpl<$Res>
    extends _$GetPrinterByIdParamsCopyWithImpl<$Res, _$GetPrinterByIdParamsImpl>
    implements _$$GetPrinterByIdParamsImplCopyWith<$Res> {
  __$$GetPrinterByIdParamsImplCopyWithImpl(_$GetPrinterByIdParamsImpl _value,
      $Res Function(_$GetPrinterByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetPrinterByIdParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPrinterByIdParamsImpl implements _GetPrinterByIdParams {
  const _$GetPrinterByIdParamsImpl({this.id = null});

  factory _$GetPrinterByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPrinterByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'GetPrinterByIdParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrinterByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPrinterByIdParamsImplCopyWith<_$GetPrinterByIdParamsImpl>
      get copyWith =>
          __$$GetPrinterByIdParamsImplCopyWithImpl<_$GetPrinterByIdParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPrinterByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetPrinterByIdParams implements GetPrinterByIdParams {
  const factory _GetPrinterByIdParams({final String? id}) =
      _$GetPrinterByIdParamsImpl;

  factory _GetPrinterByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetPrinterByIdParamsImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetPrinterByIdParamsImplCopyWith<_$GetPrinterByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

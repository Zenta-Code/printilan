// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_printer_by_id_usecase.dart';

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

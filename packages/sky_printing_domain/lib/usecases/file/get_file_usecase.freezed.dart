// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_file_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFileParams _$GetFileParamsFromJson(Map<String, dynamic> json) {
  return _GetFileParams.fromJson(json);
}

/// @nodoc
mixin _$GetFileParams {
  List<String> get allowedExtensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFileParamsCopyWith<GetFileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFileParamsCopyWith<$Res> {
  factory $GetFileParamsCopyWith(
          GetFileParams value, $Res Function(GetFileParams) then) =
      _$GetFileParamsCopyWithImpl<$Res, GetFileParams>;
  @useResult
  $Res call({List<String> allowedExtensions});
}

/// @nodoc
class _$GetFileParamsCopyWithImpl<$Res, $Val extends GetFileParams>
    implements $GetFileParamsCopyWith<$Res> {
  _$GetFileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedExtensions = null,
  }) {
    return _then(_value.copyWith(
      allowedExtensions: null == allowedExtensions
          ? _value.allowedExtensions
          : allowedExtensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFileParamsImplCopyWith<$Res>
    implements $GetFileParamsCopyWith<$Res> {
  factory _$$GetFileParamsImplCopyWith(
          _$GetFileParamsImpl value, $Res Function(_$GetFileParamsImpl) then) =
      __$$GetFileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> allowedExtensions});
}

/// @nodoc
class __$$GetFileParamsImplCopyWithImpl<$Res>
    extends _$GetFileParamsCopyWithImpl<$Res, _$GetFileParamsImpl>
    implements _$$GetFileParamsImplCopyWith<$Res> {
  __$$GetFileParamsImplCopyWithImpl(
      _$GetFileParamsImpl _value, $Res Function(_$GetFileParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedExtensions = null,
  }) {
    return _then(_$GetFileParamsImpl(
      allowedExtensions: null == allowedExtensions
          ? _value._allowedExtensions
          : allowedExtensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFileParamsImpl implements _GetFileParams {
  const _$GetFileParamsImpl({final List<String> allowedExtensions = const []})
      : _allowedExtensions = allowedExtensions;

  factory _$GetFileParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFileParamsImplFromJson(json);

  final List<String> _allowedExtensions;
  @override
  @JsonKey()
  List<String> get allowedExtensions {
    if (_allowedExtensions is EqualUnmodifiableListView)
      return _allowedExtensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedExtensions);
  }

  @override
  String toString() {
    return 'GetFileParams(allowedExtensions: $allowedExtensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFileParamsImpl &&
            const DeepCollectionEquality()
                .equals(other._allowedExtensions, _allowedExtensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allowedExtensions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFileParamsImplCopyWith<_$GetFileParamsImpl> get copyWith =>
      __$$GetFileParamsImplCopyWithImpl<_$GetFileParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFileParamsImplToJson(
      this,
    );
  }
}

abstract class _GetFileParams implements GetFileParams {
  const factory _GetFileParams({final List<String> allowedExtensions}) =
      _$GetFileParamsImpl;

  factory _GetFileParams.fromJson(Map<String, dynamic> json) =
      _$GetFileParamsImpl.fromJson;

  @override
  List<String> get allowedExtensions;
  @override
  @JsonKey(ignore: true)
  _$$GetFileParamsImplCopyWith<_$GetFileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

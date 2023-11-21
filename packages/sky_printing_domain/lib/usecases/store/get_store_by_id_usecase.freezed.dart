// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_store_by_id_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStoreByIdParams _$GetStoreByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetStoreByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetStoreByIdParams {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStoreByIdParamsCopyWith<GetStoreByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoreByIdParamsCopyWith<$Res> {
  factory $GetStoreByIdParamsCopyWith(
          GetStoreByIdParams value, $Res Function(GetStoreByIdParams) then) =
      _$GetStoreByIdParamsCopyWithImpl<$Res, GetStoreByIdParams>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GetStoreByIdParamsCopyWithImpl<$Res, $Val extends GetStoreByIdParams>
    implements $GetStoreByIdParamsCopyWith<$Res> {
  _$GetStoreByIdParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetStoreByIdParamsImplCopyWith<$Res>
    implements $GetStoreByIdParamsCopyWith<$Res> {
  factory _$$GetStoreByIdParamsImplCopyWith(_$GetStoreByIdParamsImpl value,
          $Res Function(_$GetStoreByIdParamsImpl) then) =
      __$$GetStoreByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetStoreByIdParamsImplCopyWithImpl<$Res>
    extends _$GetStoreByIdParamsCopyWithImpl<$Res, _$GetStoreByIdParamsImpl>
    implements _$$GetStoreByIdParamsImplCopyWith<$Res> {
  __$$GetStoreByIdParamsImplCopyWithImpl(_$GetStoreByIdParamsImpl _value,
      $Res Function(_$GetStoreByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetStoreByIdParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStoreByIdParamsImpl implements _GetStoreByIdParams {
  const _$GetStoreByIdParamsImpl({this.id = null});

  factory _$GetStoreByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStoreByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'GetStoreByIdParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoreByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoreByIdParamsImplCopyWith<_$GetStoreByIdParamsImpl> get copyWith =>
      __$$GetStoreByIdParamsImplCopyWithImpl<_$GetStoreByIdParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStoreByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetStoreByIdParams implements GetStoreByIdParams {
  const factory _GetStoreByIdParams({final String? id}) =
      _$GetStoreByIdParamsImpl;

  factory _GetStoreByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetStoreByIdParamsImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetStoreByIdParamsImplCopyWith<_$GetStoreByIdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

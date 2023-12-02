// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileEntity {
  @HiveField(0)
  FilePickerResult? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileEntityCopyWith<FileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileEntityCopyWith<$Res> {
  factory $FileEntityCopyWith(
          FileEntity value, $Res Function(FileEntity) then) =
      _$FileEntityCopyWithImpl<$Res, FileEntity>;
  @useResult
  $Res call({@HiveField(0) FilePickerResult? result});
}

/// @nodoc
class _$FileEntityCopyWithImpl<$Res, $Val extends FileEntity>
    implements $FileEntityCopyWith<$Res> {
  _$FileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileEntityImplCopyWith<$Res>
    implements $FileEntityCopyWith<$Res> {
  factory _$$FileEntityImplCopyWith(
          _$FileEntityImpl value, $Res Function(_$FileEntityImpl) then) =
      __$$FileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) FilePickerResult? result});
}

/// @nodoc
class __$$FileEntityImplCopyWithImpl<$Res>
    extends _$FileEntityCopyWithImpl<$Res, _$FileEntityImpl>
    implements _$$FileEntityImplCopyWith<$Res> {
  __$$FileEntityImplCopyWithImpl(
      _$FileEntityImpl _value, $Res Function(_$FileEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$FileEntityImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 3, adapterName: 'FileEntityAdapter')
class _$FileEntityImpl implements _FileEntity {
  const _$FileEntityImpl({@HiveField(0) this.result});

  @override
  @HiveField(0)
  final FilePickerResult? result;

  @override
  String toString() {
    return 'FileEntity(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileEntityImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileEntityImplCopyWith<_$FileEntityImpl> get copyWith =>
      __$$FileEntityImplCopyWithImpl<_$FileEntityImpl>(this, _$identity);
}

abstract class _FileEntity implements FileEntity {
  const factory _FileEntity({@HiveField(0) final FilePickerResult? result}) =
      _$FileEntityImpl;

  @override
  @HiveField(0)
  FilePickerResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$FileEntityImplCopyWith<_$FileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

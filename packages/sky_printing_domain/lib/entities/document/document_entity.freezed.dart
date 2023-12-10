// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get fileName => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get filePath => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get type => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get totalPage => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get size => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get color => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get copies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentEntityCopyWith<DocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentEntityCopyWith<$Res> {
  factory $DocumentEntityCopyWith(
          DocumentEntity value, $Res Function(DocumentEntity) then) =
      _$DocumentEntityCopyWithImpl<$Res, DocumentEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? fileName,
      @HiveField(2) String? filePath,
      @HiveField(3) String? type,
      @HiveField(4) int? totalPage,
      @HiveField(5) String? size,
      @HiveField(6) bool? color,
      @HiveField(7) int? copies});
}

/// @nodoc
class _$DocumentEntityCopyWithImpl<$Res, $Val extends DocumentEntity>
    implements $DocumentEntityCopyWith<$Res> {
  _$DocumentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? type = freezed,
    Object? totalPage = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? copies = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPage: freezed == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as bool?,
      copies: freezed == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentEntityImplCopyWith<$Res>
    implements $DocumentEntityCopyWith<$Res> {
  factory _$$DocumentEntityImplCopyWith(_$DocumentEntityImpl value,
          $Res Function(_$DocumentEntityImpl) then) =
      __$$DocumentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? fileName,
      @HiveField(2) String? filePath,
      @HiveField(3) String? type,
      @HiveField(4) int? totalPage,
      @HiveField(5) String? size,
      @HiveField(6) bool? color,
      @HiveField(7) int? copies});
}

/// @nodoc
class __$$DocumentEntityImplCopyWithImpl<$Res>
    extends _$DocumentEntityCopyWithImpl<$Res, _$DocumentEntityImpl>
    implements _$$DocumentEntityImplCopyWith<$Res> {
  __$$DocumentEntityImplCopyWithImpl(
      _$DocumentEntityImpl _value, $Res Function(_$DocumentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? type = freezed,
    Object? totalPage = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? copies = freezed,
  }) {
    return _then(_$DocumentEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPage: freezed == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as bool?,
      copies: freezed == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 3, adapterName: 'DocumentEntityAdapter')
class _$DocumentEntityImpl implements _DocumentEntity {
  const _$DocumentEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.fileName,
      @HiveField(2) this.filePath,
      @HiveField(3) this.type,
      @HiveField(4) this.totalPage,
      @HiveField(5) this.size,
      @HiveField(6) this.color,
      @HiveField(7) this.copies});

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? fileName;
  @override
  @HiveField(2)
  final String? filePath;
  @override
  @HiveField(3)
  final String? type;
  @override
  @HiveField(4)
  final int? totalPage;
  @override
  @HiveField(5)
  final String? size;
  @override
  @HiveField(6)
  final bool? color;
  @override
  @HiveField(7)
  final int? copies;

  @override
  String toString() {
    return 'DocumentEntity(id: $id, fileName: $fileName, filePath: $filePath, type: $type, totalPage: $totalPage, size: $size, color: $color, copies: $copies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.copies, copies) || other.copies == copies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fileName, filePath, type,
      totalPage, size, color, copies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentEntityImplCopyWith<_$DocumentEntityImpl> get copyWith =>
      __$$DocumentEntityImplCopyWithImpl<_$DocumentEntityImpl>(
          this, _$identity);
}

abstract class _DocumentEntity implements DocumentEntity {
  const factory _DocumentEntity(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? fileName,
      @HiveField(2) final String? filePath,
      @HiveField(3) final String? type,
      @HiveField(4) final int? totalPage,
      @HiveField(5) final String? size,
      @HiveField(6) final bool? color,
      @HiveField(7) final int? copies}) = _$DocumentEntityImpl;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get fileName;
  @override
  @HiveField(2)
  String? get filePath;
  @override
  @HiveField(3)
  String? get type;
  @override
  @HiveField(4)
  int? get totalPage;
  @override
  @HiveField(5)
  String? get size;
  @override
  @HiveField(6)
  bool? get color;
  @override
  @HiveField(7)
  int? get copies;
  @override
  @JsonKey(ignore: true)
  _$$DocumentEntityImplCopyWith<_$DocumentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

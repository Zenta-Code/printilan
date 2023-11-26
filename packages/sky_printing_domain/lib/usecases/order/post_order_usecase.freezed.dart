// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_order_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostOrderParams _$PostOrderParamsFromJson(Map<String, dynamic> json) {
  return _PostOrderParams.fromJson(json);
}

/// @nodoc
mixin _$PostOrderParams {
  int get copies => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String? get fileExtension => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostOrderParamsCopyWith<PostOrderParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostOrderParamsCopyWith<$Res> {
  factory $PostOrderParamsCopyWith(
          PostOrderParams value, $Res Function(PostOrderParams) then) =
      _$PostOrderParamsCopyWithImpl<$Res, PostOrderParams>;
  @useResult
  $Res call(
      {int copies,
      int pages,
      int price,
      String? storeId,
      String? userId,
      String? fileName,
      String? filePath,
      String? fileType,
      String? fileExtension});
}

/// @nodoc
class _$PostOrderParamsCopyWithImpl<$Res, $Val extends PostOrderParams>
    implements $PostOrderParamsCopyWith<$Res> {
  _$PostOrderParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copies = null,
    Object? pages = null,
    Object? price = null,
    Object? storeId = freezed,
    Object? userId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? fileType = freezed,
    Object? fileExtension = freezed,
  }) {
    return _then(_value.copyWith(
      copies: null == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostOrderParamsImplCopyWith<$Res>
    implements $PostOrderParamsCopyWith<$Res> {
  factory _$$PostOrderParamsImplCopyWith(_$PostOrderParamsImpl value,
          $Res Function(_$PostOrderParamsImpl) then) =
      __$$PostOrderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int copies,
      int pages,
      int price,
      String? storeId,
      String? userId,
      String? fileName,
      String? filePath,
      String? fileType,
      String? fileExtension});
}

/// @nodoc
class __$$PostOrderParamsImplCopyWithImpl<$Res>
    extends _$PostOrderParamsCopyWithImpl<$Res, _$PostOrderParamsImpl>
    implements _$$PostOrderParamsImplCopyWith<$Res> {
  __$$PostOrderParamsImplCopyWithImpl(
      _$PostOrderParamsImpl _value, $Res Function(_$PostOrderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copies = null,
    Object? pages = null,
    Object? price = null,
    Object? storeId = freezed,
    Object? userId = freezed,
    Object? fileName = freezed,
    Object? filePath = freezed,
    Object? fileType = freezed,
    Object? fileExtension = freezed,
  }) {
    return _then(_$PostOrderParamsImpl(
      copies: null == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostOrderParamsImpl implements _PostOrderParams {
  const _$PostOrderParamsImpl(
      {this.copies = 0,
      this.pages = 0,
      this.price = 0,
      this.storeId = null,
      this.userId = null,
      this.fileName = null,
      this.filePath = null,
      this.fileType = null,
      this.fileExtension = null});

  factory _$PostOrderParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostOrderParamsImplFromJson(json);

  @override
  @JsonKey()
  final int copies;
  @override
  @JsonKey()
  final int pages;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String? storeId;
  @override
  @JsonKey()
  final String? userId;
  @override
  @JsonKey()
  final String? fileName;
  @override
  @JsonKey()
  final String? filePath;
  @override
  @JsonKey()
  final String? fileType;
  @override
  @JsonKey()
  final String? fileExtension;

  @override
  String toString() {
    return 'PostOrderParams(copies: $copies, pages: $pages, price: $price, storeId: $storeId, userId: $userId, fileName: $fileName, filePath: $filePath, fileType: $fileType, fileExtension: $fileExtension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostOrderParamsImpl &&
            (identical(other.copies, copies) || other.copies == copies) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.fileExtension, fileExtension) ||
                other.fileExtension == fileExtension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, copies, pages, price, storeId,
      userId, fileName, filePath, fileType, fileExtension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostOrderParamsImplCopyWith<_$PostOrderParamsImpl> get copyWith =>
      __$$PostOrderParamsImplCopyWithImpl<_$PostOrderParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostOrderParamsImplToJson(
      this,
    );
  }
}

abstract class _PostOrderParams implements PostOrderParams {
  const factory _PostOrderParams(
      {final int copies,
      final int pages,
      final int price,
      final String? storeId,
      final String? userId,
      final String? fileName,
      final String? filePath,
      final String? fileType,
      final String? fileExtension}) = _$PostOrderParamsImpl;

  factory _PostOrderParams.fromJson(Map<String, dynamic> json) =
      _$PostOrderParamsImpl.fromJson;

  @override
  int get copies;
  @override
  int get pages;
  @override
  int get price;
  @override
  String? get storeId;
  @override
  String? get userId;
  @override
  String? get fileName;
  @override
  String? get filePath;
  @override
  String? get fileType;
  @override
  String? get fileExtension;
  @override
  @JsonKey(ignore: true)
  _$$PostOrderParamsImplCopyWith<_$PostOrderParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

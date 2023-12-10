// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteOrderByIdParams _$DeleteOrderByIdParamsFromJson(
    Map<String, dynamic> json) {
  return _DeleteOrderByIdParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteOrderByIdParams {
  String? get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteOrderByIdParamsCopyWith<DeleteOrderByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteOrderByIdParamsCopyWith<$Res> {
  factory $DeleteOrderByIdParamsCopyWith(DeleteOrderByIdParams value,
          $Res Function(DeleteOrderByIdParams) then) =
      _$DeleteOrderByIdParamsCopyWithImpl<$Res, DeleteOrderByIdParams>;
  @useResult
  $Res call({String? orderId});
}

/// @nodoc
class _$DeleteOrderByIdParamsCopyWithImpl<$Res,
        $Val extends DeleteOrderByIdParams>
    implements $DeleteOrderByIdParamsCopyWith<$Res> {
  _$DeleteOrderByIdParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteOrderByIdParamsImplCopyWith<$Res>
    implements $DeleteOrderByIdParamsCopyWith<$Res> {
  factory _$$DeleteOrderByIdParamsImplCopyWith(
          _$DeleteOrderByIdParamsImpl value,
          $Res Function(_$DeleteOrderByIdParamsImpl) then) =
      __$$DeleteOrderByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? orderId});
}

/// @nodoc
class __$$DeleteOrderByIdParamsImplCopyWithImpl<$Res>
    extends _$DeleteOrderByIdParamsCopyWithImpl<$Res,
        _$DeleteOrderByIdParamsImpl>
    implements _$$DeleteOrderByIdParamsImplCopyWith<$Res> {
  __$$DeleteOrderByIdParamsImplCopyWithImpl(_$DeleteOrderByIdParamsImpl _value,
      $Res Function(_$DeleteOrderByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_$DeleteOrderByIdParamsImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteOrderByIdParamsImpl implements _DeleteOrderByIdParams {
  const _$DeleteOrderByIdParamsImpl({this.orderId = null});

  factory _$DeleteOrderByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteOrderByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? orderId;

  @override
  String toString() {
    return 'DeleteOrderByIdParams(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOrderByIdParamsImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOrderByIdParamsImplCopyWith<_$DeleteOrderByIdParamsImpl>
      get copyWith => __$$DeleteOrderByIdParamsImplCopyWithImpl<
          _$DeleteOrderByIdParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteOrderByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _DeleteOrderByIdParams implements DeleteOrderByIdParams {
  const factory _DeleteOrderByIdParams({final String? orderId}) =
      _$DeleteOrderByIdParamsImpl;

  factory _DeleteOrderByIdParams.fromJson(Map<String, dynamic> json) =
      _$DeleteOrderByIdParamsImpl.fromJson;

  @override
  String? get orderId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteOrderByIdParamsImplCopyWith<_$DeleteOrderByIdParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetOrderByIdParams _$GetOrderByIdParamsFromJson(Map<String, dynamic> json) {
  return _GetOrderByIdParams.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByIdParams {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderByIdParamsCopyWith<GetOrderByIdParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByIdParamsCopyWith<$Res> {
  factory $GetOrderByIdParamsCopyWith(
          GetOrderByIdParams value, $Res Function(GetOrderByIdParams) then) =
      _$GetOrderByIdParamsCopyWithImpl<$Res, GetOrderByIdParams>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GetOrderByIdParamsCopyWithImpl<$Res, $Val extends GetOrderByIdParams>
    implements $GetOrderByIdParamsCopyWith<$Res> {
  _$GetOrderByIdParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetOrderByIdParamsImplCopyWith<$Res>
    implements $GetOrderByIdParamsCopyWith<$Res> {
  factory _$$GetOrderByIdParamsImplCopyWith(_$GetOrderByIdParamsImpl value,
          $Res Function(_$GetOrderByIdParamsImpl) then) =
      __$$GetOrderByIdParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetOrderByIdParamsImplCopyWithImpl<$Res>
    extends _$GetOrderByIdParamsCopyWithImpl<$Res, _$GetOrderByIdParamsImpl>
    implements _$$GetOrderByIdParamsImplCopyWith<$Res> {
  __$$GetOrderByIdParamsImplCopyWithImpl(_$GetOrderByIdParamsImpl _value,
      $Res Function(_$GetOrderByIdParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetOrderByIdParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByIdParamsImpl implements _GetOrderByIdParams {
  const _$GetOrderByIdParamsImpl({this.id = null});

  factory _$GetOrderByIdParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByIdParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? id;

  @override
  String toString() {
    return 'GetOrderByIdParams(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByIdParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByIdParamsImplCopyWith<_$GetOrderByIdParamsImpl> get copyWith =>
      __$$GetOrderByIdParamsImplCopyWithImpl<_$GetOrderByIdParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByIdParamsImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByIdParams implements GetOrderByIdParams {
  const factory _GetOrderByIdParams({final String? id}) =
      _$GetOrderByIdParamsImpl;

  factory _GetOrderByIdParams.fromJson(Map<String, dynamic> json) =
      _$GetOrderByIdParamsImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderByIdParamsImplCopyWith<_$GetOrderByIdParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetOrderByStoreParams _$GetOrderByStoreParamsFromJson(
    Map<String, dynamic> json) {
  return _GetOrderByStoreParams.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByStoreParams {
  String? get storeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderByStoreParamsCopyWith<GetOrderByStoreParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByStoreParamsCopyWith<$Res> {
  factory $GetOrderByStoreParamsCopyWith(GetOrderByStoreParams value,
          $Res Function(GetOrderByStoreParams) then) =
      _$GetOrderByStoreParamsCopyWithImpl<$Res, GetOrderByStoreParams>;
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class _$GetOrderByStoreParamsCopyWithImpl<$Res,
        $Val extends GetOrderByStoreParams>
    implements $GetOrderByStoreParamsCopyWith<$Res> {
  _$GetOrderByStoreParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetOrderByStoreParamsImplCopyWith<$Res>
    implements $GetOrderByStoreParamsCopyWith<$Res> {
  factory _$$GetOrderByStoreParamsImplCopyWith(
          _$GetOrderByStoreParamsImpl value,
          $Res Function(_$GetOrderByStoreParamsImpl) then) =
      __$$GetOrderByStoreParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? storeId});
}

/// @nodoc
class __$$GetOrderByStoreParamsImplCopyWithImpl<$Res>
    extends _$GetOrderByStoreParamsCopyWithImpl<$Res,
        _$GetOrderByStoreParamsImpl>
    implements _$$GetOrderByStoreParamsImplCopyWith<$Res> {
  __$$GetOrderByStoreParamsImplCopyWithImpl(_$GetOrderByStoreParamsImpl _value,
      $Res Function(_$GetOrderByStoreParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
  }) {
    return _then(_$GetOrderByStoreParamsImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByStoreParamsImpl implements _GetOrderByStoreParams {
  const _$GetOrderByStoreParamsImpl({this.storeId = null});

  factory _$GetOrderByStoreParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByStoreParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? storeId;

  @override
  String toString() {
    return 'GetOrderByStoreParams(storeId: $storeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByStoreParamsImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByStoreParamsImplCopyWith<_$GetOrderByStoreParamsImpl>
      get copyWith => __$$GetOrderByStoreParamsImplCopyWithImpl<
          _$GetOrderByStoreParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByStoreParamsImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByStoreParams implements GetOrderByStoreParams {
  const factory _GetOrderByStoreParams({final String? storeId}) =
      _$GetOrderByStoreParamsImpl;

  factory _GetOrderByStoreParams.fromJson(Map<String, dynamic> json) =
      _$GetOrderByStoreParamsImpl.fromJson;

  @override
  String? get storeId;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderByStoreParamsImplCopyWith<_$GetOrderByStoreParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetOrderByUserParams _$GetOrderByUserParamsFromJson(Map<String, dynamic> json) {
  return _GetOrderByUserParams.fromJson(json);
}

/// @nodoc
mixin _$GetOrderByUserParams {
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderByUserParamsCopyWith<GetOrderByUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByUserParamsCopyWith<$Res> {
  factory $GetOrderByUserParamsCopyWith(GetOrderByUserParams value,
          $Res Function(GetOrderByUserParams) then) =
      _$GetOrderByUserParamsCopyWithImpl<$Res, GetOrderByUserParams>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class _$GetOrderByUserParamsCopyWithImpl<$Res,
        $Val extends GetOrderByUserParams>
    implements $GetOrderByUserParamsCopyWith<$Res> {
  _$GetOrderByUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrderByUserParamsImplCopyWith<$Res>
    implements $GetOrderByUserParamsCopyWith<$Res> {
  factory _$$GetOrderByUserParamsImplCopyWith(_$GetOrderByUserParamsImpl value,
          $Res Function(_$GetOrderByUserParamsImpl) then) =
      __$$GetOrderByUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$GetOrderByUserParamsImplCopyWithImpl<$Res>
    extends _$GetOrderByUserParamsCopyWithImpl<$Res, _$GetOrderByUserParamsImpl>
    implements _$$GetOrderByUserParamsImplCopyWith<$Res> {
  __$$GetOrderByUserParamsImplCopyWithImpl(_$GetOrderByUserParamsImpl _value,
      $Res Function(_$GetOrderByUserParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$GetOrderByUserParamsImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOrderByUserParamsImpl implements _GetOrderByUserParams {
  const _$GetOrderByUserParamsImpl({this.userId = null});

  factory _$GetOrderByUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderByUserParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? userId;

  @override
  String toString() {
    return 'GetOrderByUserParams(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByUserParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByUserParamsImplCopyWith<_$GetOrderByUserParamsImpl>
      get copyWith =>
          __$$GetOrderByUserParamsImplCopyWithImpl<_$GetOrderByUserParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderByUserParamsImplToJson(
      this,
    );
  }
}

abstract class _GetOrderByUserParams implements GetOrderByUserParams {
  const factory _GetOrderByUserParams({final String? userId}) =
      _$GetOrderByUserParamsImpl;

  factory _GetOrderByUserParams.fromJson(Map<String, dynamic> json) =
      _$GetOrderByUserParamsImpl.fromJson;

  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderByUserParamsImplCopyWith<_$GetOrderByUserParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

CreateReportOrderParams _$CreateReportOrderParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateReportOrderParams.fromJson(json);
}

/// @nodoc
mixin _$CreateReportOrderParams {
  String? get savePath => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReportOrderParamsCopyWith<CreateReportOrderParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportOrderParamsCopyWith<$Res> {
  factory $CreateReportOrderParamsCopyWith(CreateReportOrderParams value,
          $Res Function(CreateReportOrderParams) then) =
      _$CreateReportOrderParamsCopyWithImpl<$Res, CreateReportOrderParams>;
  @useResult
  $Res call(
      {String? savePath,
      String? storeId,
      DateTime? startDate,
      DateTime? endDate,
      String option});
}

/// @nodoc
class _$CreateReportOrderParamsCopyWithImpl<$Res,
        $Val extends CreateReportOrderParams>
    implements $CreateReportOrderParamsCopyWith<$Res> {
  _$CreateReportOrderParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savePath = freezed,
    Object? storeId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      savePath: freezed == savePath
          ? _value.savePath
          : savePath // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateReportOrderParamsImplCopyWith<$Res>
    implements $CreateReportOrderParamsCopyWith<$Res> {
  factory _$$CreateReportOrderParamsImplCopyWith(
          _$CreateReportOrderParamsImpl value,
          $Res Function(_$CreateReportOrderParamsImpl) then) =
      __$$CreateReportOrderParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? savePath,
      String? storeId,
      DateTime? startDate,
      DateTime? endDate,
      String option});
}

/// @nodoc
class __$$CreateReportOrderParamsImplCopyWithImpl<$Res>
    extends _$CreateReportOrderParamsCopyWithImpl<$Res,
        _$CreateReportOrderParamsImpl>
    implements _$$CreateReportOrderParamsImplCopyWith<$Res> {
  __$$CreateReportOrderParamsImplCopyWithImpl(
      _$CreateReportOrderParamsImpl _value,
      $Res Function(_$CreateReportOrderParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savePath = freezed,
    Object? storeId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? option = null,
  }) {
    return _then(_$CreateReportOrderParamsImpl(
      savePath: freezed == savePath
          ? _value.savePath
          : savePath // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReportOrderParamsImpl implements _CreateReportOrderParams {
  const _$CreateReportOrderParamsImpl(
      {this.savePath = null,
      this.storeId = null,
      this.startDate = null,
      this.endDate = null,
      this.option = "csv"});

  factory _$CreateReportOrderParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReportOrderParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? savePath;
  @override
  @JsonKey()
  final String? storeId;
  @override
  @JsonKey()
  final DateTime? startDate;
  @override
  @JsonKey()
  final DateTime? endDate;
  @override
  @JsonKey()
  final String option;

  @override
  String toString() {
    return 'CreateReportOrderParams(savePath: $savePath, storeId: $storeId, startDate: $startDate, endDate: $endDate, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReportOrderParamsImpl &&
            (identical(other.savePath, savePath) ||
                other.savePath == savePath) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.option, option) || other.option == option));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, savePath, storeId, startDate, endDate, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReportOrderParamsImplCopyWith<_$CreateReportOrderParamsImpl>
      get copyWith => __$$CreateReportOrderParamsImplCopyWithImpl<
          _$CreateReportOrderParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReportOrderParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateReportOrderParams implements CreateReportOrderParams {
  const factory _CreateReportOrderParams(
      {final String? savePath,
      final String? storeId,
      final DateTime? startDate,
      final DateTime? endDate,
      final String option}) = _$CreateReportOrderParamsImpl;

  factory _CreateReportOrderParams.fromJson(Map<String, dynamic> json) =
      _$CreateReportOrderParamsImpl.fromJson;

  @override
  String? get savePath;
  @override
  String? get storeId;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String get option;
  @override
  @JsonKey(ignore: true)
  _$$CreateReportOrderParamsImplCopyWith<_$CreateReportOrderParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

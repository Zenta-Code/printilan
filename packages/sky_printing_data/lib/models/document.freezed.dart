// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
mixin _$Document {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  bool? get color => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get copies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res, Document>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      int? count,
      String? size,
      bool? color,
      int? price,
      int? copies});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res, $Val extends Document>
    implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? count = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? price = freezed,
    Object? copies = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      copies: freezed == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentImplCopyWith<$Res>
    implements $DocumentCopyWith<$Res> {
  factory _$$DocumentImplCopyWith(
          _$DocumentImpl value, $Res Function(_$DocumentImpl) then) =
      __$$DocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      int? count,
      String? size,
      bool? color,
      int? price,
      int? copies});
}

/// @nodoc
class __$$DocumentImplCopyWithImpl<$Res>
    extends _$DocumentCopyWithImpl<$Res, _$DocumentImpl>
    implements _$$DocumentImplCopyWith<$Res> {
  __$$DocumentImplCopyWithImpl(
      _$DocumentImpl _value, $Res Function(_$DocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? count = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? price = freezed,
    Object? copies = freezed,
  }) {
    return _then(_$DocumentImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      copies: freezed == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentImpl extends _Document {
  const _$DocumentImpl(
      {this.name,
      this.type,
      this.count,
      this.size,
      this.color,
      this.price,
      this.copies})
      : super._();

  factory _$DocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final int? count;
  @override
  final String? size;
  @override
  final bool? color;
  @override
  final int? price;
  @override
  final int? copies;

  @override
  String toString() {
    return 'Document(name: $name, type: $type, count: $count, size: $size, color: $color, price: $price, copies: $copies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.copies, copies) || other.copies == copies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, count, size, color, price, copies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      __$$DocumentImplCopyWithImpl<_$DocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentImplToJson(
      this,
    );
  }
}

abstract class _Document extends Document {
  const factory _Document(
      {final String? name,
      final String? type,
      final int? count,
      final String? size,
      final bool? color,
      final int? price,
      final int? copies}) = _$DocumentImpl;
  const _Document._() : super._();

  factory _Document.fromJson(Map<String, dynamic> json) =
      _$DocumentImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  int? get count;
  @override
  String? get size;
  @override
  bool? get color;
  @override
  int? get price;
  @override
  int? get copies;
  @override
  @JsonKey(ignore: true)
  _$$DocumentImplCopyWith<_$DocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

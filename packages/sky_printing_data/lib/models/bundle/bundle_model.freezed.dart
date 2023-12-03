// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BundleModel _$BundleModelFromJson(Map<String, dynamic> json) {
  return _BundleModel.fromJson(json);
}

/// @nodoc
mixin _$BundleModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<BundleOptionsModel>? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleModelCopyWith<BundleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleModelCopyWith<$Res> {
  factory $BundleModelCopyWith(
          BundleModel value, $Res Function(BundleModel) then) =
      _$BundleModelCopyWithImpl<$Res, BundleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? storeId,
      String? name,
      List<BundleOptionsModel>? options});
}

/// @nodoc
class _$BundleModelCopyWithImpl<$Res, $Val extends BundleModel>
    implements $BundleModelCopyWith<$Res> {
  _$BundleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? storeId = freezed,
    Object? name = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<BundleOptionsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BundleModelImplCopyWith<$Res>
    implements $BundleModelCopyWith<$Res> {
  factory _$$BundleModelImplCopyWith(
          _$BundleModelImpl value, $Res Function(_$BundleModelImpl) then) =
      __$$BundleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? storeId,
      String? name,
      List<BundleOptionsModel>? options});
}

/// @nodoc
class __$$BundleModelImplCopyWithImpl<$Res>
    extends _$BundleModelCopyWithImpl<$Res, _$BundleModelImpl>
    implements _$$BundleModelImplCopyWith<$Res> {
  __$$BundleModelImplCopyWithImpl(
      _$BundleModelImpl _value, $Res Function(_$BundleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? storeId = freezed,
    Object? name = freezed,
    Object? options = freezed,
  }) {
    return _then(_$BundleModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<BundleOptionsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BundleModelImpl extends _BundleModel {
  const _$BundleModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.storeId,
      this.name,
      final List<BundleOptionsModel>? options})
      : _options = options,
        super._();

  factory _$BundleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BundleModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? storeId;
  @override
  final String? name;
  final List<BundleOptionsModel>? _options;
  @override
  List<BundleOptionsModel>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BundleModel(id: $id, storeId: $storeId, name: $name, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeId, name,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BundleModelImplCopyWith<_$BundleModelImpl> get copyWith =>
      __$$BundleModelImplCopyWithImpl<_$BundleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BundleModelImplToJson(
      this,
    );
  }
}

abstract class _BundleModel extends BundleModel {
  const factory _BundleModel(
      {@JsonKey(name: '_id') final String? id,
      final String? storeId,
      final String? name,
      final List<BundleOptionsModel>? options}) = _$BundleModelImpl;
  const _BundleModel._() : super._();

  factory _BundleModel.fromJson(Map<String, dynamic> json) =
      _$BundleModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get storeId;
  @override
  String? get name;
  @override
  List<BundleOptionsModel>? get options;
  @override
  @JsonKey(ignore: true)
  _$$BundleModelImplCopyWith<_$BundleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BundleOptionsModel _$BundleOptionsModelFromJson(Map<String, dynamic> json) {
  return _BundleOptionsModel.fromJson(json);
}

/// @nodoc
mixin _$BundleOptionsModel {
  bool? get color => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleOptionsModelCopyWith<BundleOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleOptionsModelCopyWith<$Res> {
  factory $BundleOptionsModelCopyWith(
          BundleOptionsModel value, $Res Function(BundleOptionsModel) then) =
      _$BundleOptionsModelCopyWithImpl<$Res, BundleOptionsModel>;
  @useResult
  $Res call({bool? color, int? price});
}

/// @nodoc
class _$BundleOptionsModelCopyWithImpl<$Res, $Val extends BundleOptionsModel>
    implements $BundleOptionsModelCopyWith<$Res> {
  _$BundleOptionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BundleOptionsModelImplCopyWith<$Res>
    implements $BundleOptionsModelCopyWith<$Res> {
  factory _$$BundleOptionsModelImplCopyWith(_$BundleOptionsModelImpl value,
          $Res Function(_$BundleOptionsModelImpl) then) =
      __$$BundleOptionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? color, int? price});
}

/// @nodoc
class __$$BundleOptionsModelImplCopyWithImpl<$Res>
    extends _$BundleOptionsModelCopyWithImpl<$Res, _$BundleOptionsModelImpl>
    implements _$$BundleOptionsModelImplCopyWith<$Res> {
  __$$BundleOptionsModelImplCopyWithImpl(_$BundleOptionsModelImpl _value,
      $Res Function(_$BundleOptionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? price = freezed,
  }) {
    return _then(_$BundleOptionsModelImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BundleOptionsModelImpl extends _BundleOptionsModel {
  const _$BundleOptionsModelImpl({this.color, this.price}) : super._();

  factory _$BundleOptionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BundleOptionsModelImplFromJson(json);

  @override
  final bool? color;
  @override
  final int? price;

  @override
  String toString() {
    return 'BundleOptionsModel(color: $color, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleOptionsModelImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BundleOptionsModelImplCopyWith<_$BundleOptionsModelImpl> get copyWith =>
      __$$BundleOptionsModelImplCopyWithImpl<_$BundleOptionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BundleOptionsModelImplToJson(
      this,
    );
  }
}

abstract class _BundleOptionsModel extends BundleOptionsModel {
  const factory _BundleOptionsModel({final bool? color, final int? price}) =
      _$BundleOptionsModelImpl;
  const _BundleOptionsModel._() : super._();

  factory _BundleOptionsModel.fromJson(Map<String, dynamic> json) =
      _$BundleOptionsModelImpl.fromJson;

  @override
  bool? get color;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$BundleOptionsModelImplCopyWith<_$BundleOptionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

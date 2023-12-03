// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BundleEntity {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get storeId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  List<BundleOptionsEntity>? get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BundleEntityCopyWith<BundleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleEntityCopyWith<$Res> {
  factory $BundleEntityCopyWith(
          BundleEntity value, $Res Function(BundleEntity) then) =
      _$BundleEntityCopyWithImpl<$Res, BundleEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? storeId,
      @HiveField(2) String? name,
      @HiveField(4) List<BundleOptionsEntity>? options});
}

/// @nodoc
class _$BundleEntityCopyWithImpl<$Res, $Val extends BundleEntity>
    implements $BundleEntityCopyWith<$Res> {
  _$BundleEntityCopyWithImpl(this._value, this._then);

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
              as List<BundleOptionsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BundleEntityImplCopyWith<$Res>
    implements $BundleEntityCopyWith<$Res> {
  factory _$$BundleEntityImplCopyWith(
          _$BundleEntityImpl value, $Res Function(_$BundleEntityImpl) then) =
      __$$BundleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? storeId,
      @HiveField(2) String? name,
      @HiveField(4) List<BundleOptionsEntity>? options});
}

/// @nodoc
class __$$BundleEntityImplCopyWithImpl<$Res>
    extends _$BundleEntityCopyWithImpl<$Res, _$BundleEntityImpl>
    implements _$$BundleEntityImplCopyWith<$Res> {
  __$$BundleEntityImplCopyWithImpl(
      _$BundleEntityImpl _value, $Res Function(_$BundleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? storeId = freezed,
    Object? name = freezed,
    Object? options = freezed,
  }) {
    return _then(_$BundleEntityImpl(
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
              as List<BundleOptionsEntity>?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 2, adapterName: 'BundleEntityAdapter')
class _$BundleEntityImpl implements _BundleEntity {
  const _$BundleEntityImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.storeId,
      @HiveField(2) this.name,
      @HiveField(4) final List<BundleOptionsEntity>? options})
      : _options = options;

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? storeId;
  @override
  @HiveField(2)
  final String? name;
  final List<BundleOptionsEntity>? _options;
  @override
  @HiveField(4)
  List<BundleOptionsEntity>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BundleEntity(id: $id, storeId: $storeId, name: $name, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, storeId, name,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BundleEntityImplCopyWith<_$BundleEntityImpl> get copyWith =>
      __$$BundleEntityImplCopyWithImpl<_$BundleEntityImpl>(this, _$identity);
}

abstract class _BundleEntity implements BundleEntity {
  const factory _BundleEntity(
          {@HiveField(0) final String? id,
          @HiveField(1) final String? storeId,
          @HiveField(2) final String? name,
          @HiveField(4) final List<BundleOptionsEntity>? options}) =
      _$BundleEntityImpl;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get storeId;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(4)
  List<BundleOptionsEntity>? get options;
  @override
  @JsonKey(ignore: true)
  _$$BundleEntityImplCopyWith<_$BundleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BundleOptionsEntity {
  @HiveField(0)
  bool? get color => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BundleOptionsEntityCopyWith<BundleOptionsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleOptionsEntityCopyWith<$Res> {
  factory $BundleOptionsEntityCopyWith(
          BundleOptionsEntity value, $Res Function(BundleOptionsEntity) then) =
      _$BundleOptionsEntityCopyWithImpl<$Res, BundleOptionsEntity>;
  @useResult
  $Res call({@HiveField(0) bool? color, @HiveField(1) int? price});
}

/// @nodoc
class _$BundleOptionsEntityCopyWithImpl<$Res, $Val extends BundleOptionsEntity>
    implements $BundleOptionsEntityCopyWith<$Res> {
  _$BundleOptionsEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$BundleOptionsEntityImplCopyWith<$Res>
    implements $BundleOptionsEntityCopyWith<$Res> {
  factory _$$BundleOptionsEntityImplCopyWith(_$BundleOptionsEntityImpl value,
          $Res Function(_$BundleOptionsEntityImpl) then) =
      __$$BundleOptionsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) bool? color, @HiveField(1) int? price});
}

/// @nodoc
class __$$BundleOptionsEntityImplCopyWithImpl<$Res>
    extends _$BundleOptionsEntityCopyWithImpl<$Res, _$BundleOptionsEntityImpl>
    implements _$$BundleOptionsEntityImplCopyWith<$Res> {
  __$$BundleOptionsEntityImplCopyWithImpl(_$BundleOptionsEntityImpl _value,
      $Res Function(_$BundleOptionsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? price = freezed,
  }) {
    return _then(_$BundleOptionsEntityImpl(
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

@HiveType(typeId: 3, adapterName: 'BundleOptionsEntityAdapter')
class _$BundleOptionsEntityImpl implements _BundleOptionsEntity {
  const _$BundleOptionsEntityImpl(
      {@HiveField(0) this.color, @HiveField(1) this.price});

  @override
  @HiveField(0)
  final bool? color;
  @override
  @HiveField(1)
  final int? price;

  @override
  String toString() {
    return 'BundleOptionsEntity(color: $color, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleOptionsEntityImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BundleOptionsEntityImplCopyWith<_$BundleOptionsEntityImpl> get copyWith =>
      __$$BundleOptionsEntityImplCopyWithImpl<_$BundleOptionsEntityImpl>(
          this, _$identity);
}

abstract class _BundleOptionsEntity implements BundleOptionsEntity {
  const factory _BundleOptionsEntity(
      {@HiveField(0) final bool? color,
      @HiveField(1) final int? price}) = _$BundleOptionsEntityImpl;

  @override
  @HiveField(0)
  bool? get color;
  @override
  @HiveField(1)
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$BundleOptionsEntityImplCopyWith<_$BundleOptionsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

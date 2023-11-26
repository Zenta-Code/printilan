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
  String? get storeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  List<dynamic>? get prices => throw _privateConstructorUsedError;

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
      {String? storeId, String? name, String? desc, List<dynamic>? prices});
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
    Object? storeId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      {String? storeId, String? name, String? desc, List<dynamic>? prices});
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
    Object? storeId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$BundleEntityImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      prices: freezed == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$BundleEntityImpl implements _BundleEntity {
  const _$BundleEntityImpl(
      {this.storeId, this.name, this.desc, final List<dynamic>? prices})
      : _prices = prices;

  @override
  final String? storeId;
  @override
  final String? name;
  @override
  final String? desc;
  final List<dynamic>? _prices;
  @override
  List<dynamic>? get prices {
    final value = _prices;
    if (value == null) return null;
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BundleEntity(storeId: $storeId, name: $name, desc: $desc, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleEntityImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeId, name, desc,
      const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BundleEntityImplCopyWith<_$BundleEntityImpl> get copyWith =>
      __$$BundleEntityImplCopyWithImpl<_$BundleEntityImpl>(this, _$identity);
}

abstract class _BundleEntity implements BundleEntity {
  const factory _BundleEntity(
      {final String? storeId,
      final String? name,
      final String? desc,
      final List<dynamic>? prices}) = _$BundleEntityImpl;

  @override
  String? get storeId;
  @override
  String? get name;
  @override
  String? get desc;
  @override
  List<dynamic>? get prices;
  @override
  @JsonKey(ignore: true)
  _$$BundleEntityImplCopyWith<_$BundleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

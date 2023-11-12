// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoreEntity {
  String? get name => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreEntityCopyWith<StoreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEntityCopyWith<$Res> {
  factory $StoreEntityCopyWith(
          StoreEntity value, $Res Function(StoreEntity) then) =
      _$StoreEntityCopyWithImpl<$Res, StoreEntity>;
  @useResult
  $Res call({String? name, Address? address, String? phone, String? ownerId});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$StoreEntityCopyWithImpl<$Res, $Val extends StoreEntity>
    implements $StoreEntityCopyWith<$Res> {
  _$StoreEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreEntityImplCopyWith<$Res>
    implements $StoreEntityCopyWith<$Res> {
  factory _$$StoreEntityImplCopyWith(
          _$StoreEntityImpl value, $Res Function(_$StoreEntityImpl) then) =
      __$$StoreEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Address? address, String? phone, String? ownerId});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$StoreEntityImplCopyWithImpl<$Res>
    extends _$StoreEntityCopyWithImpl<$Res, _$StoreEntityImpl>
    implements _$$StoreEntityImplCopyWith<$Res> {
  __$$StoreEntityImplCopyWithImpl(
      _$StoreEntityImpl _value, $Res Function(_$StoreEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_$StoreEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StoreEntityImpl implements _StoreEntity {
  const _$StoreEntityImpl({this.name, this.address, this.phone, this.ownerId});

  @override
  final String? name;
  @override
  final Address? address;
  @override
  final String? phone;
  @override
  final String? ownerId;

  @override
  String toString() {
    return 'StoreEntity(name: $name, address: $address, phone: $phone, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, phone, ownerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreEntityImplCopyWith<_$StoreEntityImpl> get copyWith =>
      __$$StoreEntityImplCopyWithImpl<_$StoreEntityImpl>(this, _$identity);
}

abstract class _StoreEntity implements StoreEntity {
  const factory _StoreEntity(
      {final String? name,
      final Address? address,
      final String? phone,
      final String? ownerId}) = _$StoreEntityImpl;

  @override
  String? get name;
  @override
  Address? get address;
  @override
  String? get phone;
  @override
  String? get ownerId;
  @override
  @JsonKey(ignore: true)
  _$$StoreEntityImplCopyWith<_$StoreEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

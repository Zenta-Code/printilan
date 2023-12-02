// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEntity {
  @HiveField(0)
  String? get street => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get city => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get state => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get country => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get zipcode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressEntityCopyWith<AddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEntityCopyWith<$Res> {
  factory $AddressEntityCopyWith(
          AddressEntity value, $Res Function(AddressEntity) then) =
      _$AddressEntityCopyWithImpl<$Res, AddressEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String? street,
      @HiveField(1) String? city,
      @HiveField(2) String? state,
      @HiveField(3) String? country,
      @HiveField(4) String? zipcode});
}

/// @nodoc
class _$AddressEntityCopyWithImpl<$Res, $Val extends AddressEntity>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipcode = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressEntityImplCopyWith<$Res>
    implements $AddressEntityCopyWith<$Res> {
  factory _$$AddressEntityImplCopyWith(
          _$AddressEntityImpl value, $Res Function(_$AddressEntityImpl) then) =
      __$$AddressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? street,
      @HiveField(1) String? city,
      @HiveField(2) String? state,
      @HiveField(3) String? country,
      @HiveField(4) String? zipcode});
}

/// @nodoc
class __$$AddressEntityImplCopyWithImpl<$Res>
    extends _$AddressEntityCopyWithImpl<$Res, _$AddressEntityImpl>
    implements _$$AddressEntityImplCopyWith<$Res> {
  __$$AddressEntityImplCopyWithImpl(
      _$AddressEntityImpl _value, $Res Function(_$AddressEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipcode = freezed,
  }) {
    return _then(_$AddressEntityImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'AddressEntityAdapter')
class _$AddressEntityImpl implements _AddressEntity {
  const _$AddressEntityImpl(
      {@HiveField(0) this.street,
      @HiveField(1) this.city,
      @HiveField(2) this.state,
      @HiveField(3) this.country,
      @HiveField(4) this.zipcode});

  @override
  @HiveField(0)
  final String? street;
  @override
  @HiveField(1)
  final String? city;
  @override
  @HiveField(2)
  final String? state;
  @override
  @HiveField(3)
  final String? country;
  @override
  @HiveField(4)
  final String? zipcode;

  @override
  String toString() {
    return 'AddressEntity(street: $street, city: $city, state: $state, country: $country, zipcode: $zipcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressEntityImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, state, country, zipcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressEntityImplCopyWith<_$AddressEntityImpl> get copyWith =>
      __$$AddressEntityImplCopyWithImpl<_$AddressEntityImpl>(this, _$identity);
}

abstract class _AddressEntity implements AddressEntity {
  const factory _AddressEntity(
      {@HiveField(0) final String? street,
      @HiveField(1) final String? city,
      @HiveField(2) final String? state,
      @HiveField(3) final String? country,
      @HiveField(4) final String? zipcode}) = _$AddressEntityImpl;

  @override
  @HiveField(0)
  String? get street;
  @override
  @HiveField(1)
  String? get city;
  @override
  @HiveField(2)
  String? get state;
  @override
  @HiveField(3)
  String? get country;
  @override
  @HiveField(4)
  String? get zipcode;
  @override
  @JsonKey(ignore: true)
  _$$AddressEntityImplCopyWith<_$AddressEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

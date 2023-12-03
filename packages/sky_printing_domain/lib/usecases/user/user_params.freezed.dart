// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeParams _$MeParamsFromJson(Map<String, dynamic> json) {
  return _MeParams.fromJson(json);
}

/// @nodoc
mixin _$MeParams {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeParamsCopyWith<MeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeParamsCopyWith<$Res> {
  factory $MeParamsCopyWith(MeParams value, $Res Function(MeParams) then) =
      _$MeParamsCopyWithImpl<$Res, MeParams>;
  @useResult
  $Res call({String? id, String? email});
}

/// @nodoc
class _$MeParamsCopyWithImpl<$Res, $Val extends MeParams>
    implements $MeParamsCopyWith<$Res> {
  _$MeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeParamsImplCopyWith<$Res>
    implements $MeParamsCopyWith<$Res> {
  factory _$$MeParamsImplCopyWith(
          _$MeParamsImpl value, $Res Function(_$MeParamsImpl) then) =
      __$$MeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? email});
}

/// @nodoc
class __$$MeParamsImplCopyWithImpl<$Res>
    extends _$MeParamsCopyWithImpl<$Res, _$MeParamsImpl>
    implements _$$MeParamsImplCopyWith<$Res> {
  __$$MeParamsImplCopyWithImpl(
      _$MeParamsImpl _value, $Res Function(_$MeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$MeParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeParamsImpl implements _MeParams {
  const _$MeParamsImpl({this.id = null, this.email = null});

  factory _$MeParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? email;

  @override
  String toString() {
    return 'MeParams(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeParamsImplCopyWith<_$MeParamsImpl> get copyWith =>
      __$$MeParamsImplCopyWithImpl<_$MeParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeParamsImplToJson(
      this,
    );
  }
}

abstract class _MeParams implements MeParams {
  const factory _MeParams({final String? id, final String? email}) =
      _$MeParamsImpl;

  factory _MeParams.fromJson(Map<String, dynamic> json) =
      _$MeParamsImpl.fromJson;

  @override
  String? get id;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$MeParamsImplCopyWith<_$MeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginParams _$LoginParamsFromJson(Map<String, dynamic> json) {
  return _LoginParams.fromJson(json);
}

/// @nodoc
mixin _$LoginParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginParamsCopyWith<LoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsCopyWith<$Res> {
  factory $LoginParamsCopyWith(
          LoginParams value, $Res Function(LoginParams) then) =
      _$LoginParamsCopyWithImpl<$Res, LoginParams>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginParamsCopyWithImpl<$Res, $Val extends LoginParams>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginParamsImplCopyWith<$Res>
    implements $LoginParamsCopyWith<$Res> {
  factory _$$LoginParamsImplCopyWith(
          _$LoginParamsImpl value, $Res Function(_$LoginParamsImpl) then) =
      __$$LoginParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginParamsImplCopyWithImpl<$Res>
    extends _$LoginParamsCopyWithImpl<$Res, _$LoginParamsImpl>
    implements _$$LoginParamsImplCopyWith<$Res> {
  __$$LoginParamsImplCopyWithImpl(
      _$LoginParamsImpl _value, $Res Function(_$LoginParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParamsImpl implements _LoginParams {
  const _$LoginParamsImpl({this.email = "", this.password = ""});

  factory _$LoginParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParamsImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'LoginParams(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      __$$LoginParamsImplCopyWithImpl<_$LoginParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParamsImplToJson(
      this,
    );
  }
}

abstract class _LoginParams implements LoginParams {
  const factory _LoginParams({final String email, final String password}) =
      _$LoginParamsImpl;

  factory _LoginParams.fromJson(Map<String, dynamic> json) =
      _$LoginParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) {
  return _RegisterParams.fromJson(json);
}

/// @nodoc
mixin _$RegisterParams {
  String? get name => throw _privateConstructorUsedError;
  String? get storeName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  AddressModel? get address => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterParamsCopyWith<RegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamsCopyWith<$Res> {
  factory $RegisterParamsCopyWith(
          RegisterParams value, $Res Function(RegisterParams) then) =
      _$RegisterParamsCopyWithImpl<$Res, RegisterParams>;
  @useResult
  $Res call(
      {String? name,
      String? storeName,
      String? phone,
      String? email,
      String? password,
      String? confirmPassword,
      AddressModel? address,
      String role});

  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$RegisterParamsCopyWithImpl<$Res, $Val extends RegisterParams>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? storeName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? address = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: freezed == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterParamsImplCopyWith<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  factory _$$RegisterParamsImplCopyWith(_$RegisterParamsImpl value,
          $Res Function(_$RegisterParamsImpl) then) =
      __$$RegisterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? storeName,
      String? phone,
      String? email,
      String? password,
      String? confirmPassword,
      AddressModel? address,
      String role});

  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$RegisterParamsImplCopyWithImpl<$Res>
    extends _$RegisterParamsCopyWithImpl<$Res, _$RegisterParamsImpl>
    implements _$$RegisterParamsImplCopyWith<$Res> {
  __$$RegisterParamsImplCopyWithImpl(
      _$RegisterParamsImpl _value, $Res Function(_$RegisterParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? storeName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? address = freezed,
    Object? role = null,
  }) {
    return _then(_$RegisterParamsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: freezed == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterParamsImpl implements _RegisterParams {
  const _$RegisterParamsImpl(
      {this.name = null,
      this.storeName = null,
      this.phone = null,
      this.email = null,
      this.password = null,
      this.confirmPassword = null,
      this.address = null,
      this.role = "customer"});

  factory _$RegisterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterParamsImplFromJson(json);

  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? storeName;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? password;
  @override
  @JsonKey()
  final String? confirmPassword;
  @override
  @JsonKey()
  final AddressModel? address;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'RegisterParams(name: $name, storeName: $storeName, phone: $phone, email: $email, password: $password, confirmPassword: $confirmPassword, address: $address, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, storeName, phone, email,
      password, confirmPassword, address, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      __$$RegisterParamsImplCopyWithImpl<_$RegisterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterParamsImplToJson(
      this,
    );
  }
}

abstract class _RegisterParams implements RegisterParams {
  const factory _RegisterParams(
      {final String? name,
      final String? storeName,
      final String? phone,
      final String? email,
      final String? password,
      final String? confirmPassword,
      final AddressModel? address,
      final String role}) = _$RegisterParamsImpl;

  factory _RegisterParams.fromJson(Map<String, dynamic> json) =
      _$RegisterParamsImpl.fromJson;

  @override
  String? get name;
  @override
  String? get storeName;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  AddressModel? get address;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreRegisterParams _$StoreRegisterParamsFromJson(Map<String, dynamic> json) {
  return _StoreRegisterParams.fromJson(json);
}

/// @nodoc
mixin _$StoreRegisterParams {
  Map<String, dynamic>? get user => throw _privateConstructorUsedError;
  Map<String, dynamic>? get store => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreRegisterParamsCopyWith<StoreRegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreRegisterParamsCopyWith<$Res> {
  factory $StoreRegisterParamsCopyWith(
          StoreRegisterParams value, $Res Function(StoreRegisterParams) then) =
      _$StoreRegisterParamsCopyWithImpl<$Res, StoreRegisterParams>;
  @useResult
  $Res call({Map<String, dynamic>? user, Map<String, dynamic>? store});
}

/// @nodoc
class _$StoreRegisterParamsCopyWithImpl<$Res, $Val extends StoreRegisterParams>
    implements $StoreRegisterParamsCopyWith<$Res> {
  _$StoreRegisterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? store = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreRegisterParamsImplCopyWith<$Res>
    implements $StoreRegisterParamsCopyWith<$Res> {
  factory _$$StoreRegisterParamsImplCopyWith(_$StoreRegisterParamsImpl value,
          $Res Function(_$StoreRegisterParamsImpl) then) =
      __$$StoreRegisterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? user, Map<String, dynamic>? store});
}

/// @nodoc
class __$$StoreRegisterParamsImplCopyWithImpl<$Res>
    extends _$StoreRegisterParamsCopyWithImpl<$Res, _$StoreRegisterParamsImpl>
    implements _$$StoreRegisterParamsImplCopyWith<$Res> {
  __$$StoreRegisterParamsImplCopyWithImpl(_$StoreRegisterParamsImpl _value,
      $Res Function(_$StoreRegisterParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? store = freezed,
  }) {
    return _then(_$StoreRegisterParamsImpl(
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      store: freezed == store
          ? _value._store
          : store // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreRegisterParamsImpl implements _StoreRegisterParams {
  const _$StoreRegisterParamsImpl(
      {final Map<String, dynamic>? user = null,
      final Map<String, dynamic>? store = null})
      : _user = user,
        _store = store;

  factory _$StoreRegisterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreRegisterParamsImplFromJson(json);

  final Map<String, dynamic>? _user;
  @override
  @JsonKey()
  Map<String, dynamic>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _store;
  @override
  @JsonKey()
  Map<String, dynamic>? get store {
    final value = _store;
    if (value == null) return null;
    if (_store is EqualUnmodifiableMapView) return _store;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StoreRegisterParams(user: $user, store: $store)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreRegisterParamsImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._store, _store));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_store));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreRegisterParamsImplCopyWith<_$StoreRegisterParamsImpl> get copyWith =>
      __$$StoreRegisterParamsImplCopyWithImpl<_$StoreRegisterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreRegisterParamsImplToJson(
      this,
    );
  }
}

abstract class _StoreRegisterParams implements StoreRegisterParams {
  const factory _StoreRegisterParams(
      {final Map<String, dynamic>? user,
      final Map<String, dynamic>? store}) = _$StoreRegisterParamsImpl;

  factory _StoreRegisterParams.fromJson(Map<String, dynamic> json) =
      _$StoreRegisterParamsImpl.fromJson;

  @override
  Map<String, dynamic>? get user;
  @override
  Map<String, dynamic>? get store;
  @override
  @JsonKey(ignore: true)
  _$$StoreRegisterParamsImplCopyWith<_$StoreRegisterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

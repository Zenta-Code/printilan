// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEntity {
  String? get token => throw _privateConstructorUsedError;
  dynamic get user => throw _privateConstructorUsedError;
  dynamic get store => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call({String? token, dynamic user, dynamic store});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
    Object? store = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEntityImplCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$LoginEntityImplCopyWith(
          _$LoginEntityImpl value, $Res Function(_$LoginEntityImpl) then) =
      __$$LoginEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, dynamic user, dynamic store});
}

/// @nodoc
class __$$LoginEntityImplCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$LoginEntityImpl>
    implements _$$LoginEntityImplCopyWith<$Res> {
  __$$LoginEntityImplCopyWithImpl(
      _$LoginEntityImpl _value, $Res Function(_$LoginEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? user = freezed,
    Object? store = freezed,
  }) {
    return _then(_$LoginEntityImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      store: freezed == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$LoginEntityImpl implements _LoginEntity {
  const _$LoginEntityImpl({this.token, this.user, this.store});

  @override
  final String? token;
  @override
  final dynamic user;
  @override
  final dynamic store;

  @override
  String toString() {
    return 'LoginEntity(token: $token, user: $user, store: $store)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEntityImpl &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.store, store));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(store));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      __$$LoginEntityImplCopyWithImpl<_$LoginEntityImpl>(this, _$identity);
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity(
      {final String? token,
      final dynamic user,
      final dynamic store}) = _$LoginEntityImpl;

  @override
  String? get token;
  @override
  dynamic get user;
  @override
  dynamic get store;
  @override
  @JsonKey(ignore: true)
  _$$LoginEntityImplCopyWith<_$LoginEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

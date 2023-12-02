// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeParamsImpl _$$MeParamsImplFromJson(Map<String, dynamic> json) =>
    _$MeParamsImpl(
      id: json['id'] as String? ?? null,
      email: json['email'] as String? ?? null,
    );

Map<String, dynamic> _$$MeParamsImplToJson(_$MeParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };

_$LoginParamsImpl _$$LoginParamsImplFromJson(Map<String, dynamic> json) =>
    _$LoginParamsImpl(
      email: json['email'] as String? ?? "",
      password: json['password'] as String? ?? "",
    );

Map<String, dynamic> _$$LoginParamsImplToJson(_$LoginParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$RegisterParamsImpl _$$RegisterParamsImplFromJson(Map<String, dynamic> json) =>
    _$RegisterParamsImpl(
      userName: json['userName'] as String? ?? null,
      storeName: json['storeName'] as String? ?? null,
      phone: json['phone'] as String? ?? null,
      email: json['email'] as String? ?? null,
      password: json['password'] as String? ?? null,
      confirmPassword: json['confirmPassword'] as String? ?? null,
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      role: json['role'] as String? ?? "customer",
    );

Map<String, dynamic> _$$RegisterParamsImplToJson(
        _$RegisterParamsImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'storeName': instance.storeName,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'address': instance.address,
      'role': instance.role,
    };

_$StoreRegisterParamsImpl _$$StoreRegisterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreRegisterParamsImpl(
      user: json['user'] as Map<String, dynamic>? ?? null,
      store: json['store'] as Map<String, dynamic>? ?? null,
    );

Map<String, dynamic> _$$StoreRegisterParamsImplToJson(
        _$StoreRegisterParamsImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'store': instance.store,
    };

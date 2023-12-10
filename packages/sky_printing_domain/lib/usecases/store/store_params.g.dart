// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStoreByCityParamsImpl _$$GetStoreByCityParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStoreByCityParamsImpl(
      city: json['city'] as String? ?? null,
    );

Map<String, dynamic> _$$GetStoreByCityParamsImplToJson(
        _$GetStoreByCityParamsImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
    };

_$GetStoreByIdParamsImpl _$$GetStoreByIdParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStoreByIdParamsImpl(
      id: json['id'] as String? ?? null,
    );

Map<String, dynamic> _$$GetStoreByIdParamsImplToJson(
        _$GetStoreByIdParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GetStoreByNameParamsImpl _$$GetStoreByNameParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStoreByNameParamsImpl(
      name: json['name'] as String? ?? null,
    );

Map<String, dynamic> _$$GetStoreByNameParamsImplToJson(
        _$GetStoreByNameParamsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
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

_$StoreUpdateParamsImpl _$$StoreUpdateParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreUpdateParamsImpl(
      id: json['id'] as String? ?? null,
      name: json['name'] as String? ?? null,
      phone: json['phone'] as String? ?? null,
      password: json['password'] as String? ?? null,
      street: json['street'] as String? ?? null,
      city: json['city'] as String? ?? null,
      state: json['state'] as String? ?? null,
      country: json['country'] as String? ?? null,
      zipCode: json['zipCode'] as String? ?? null,
    );

Map<String, dynamic> _$$StoreUpdateParamsImplToJson(
        _$StoreUpdateParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'password': instance.password,
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zipCode': instance.zipCode,
    };

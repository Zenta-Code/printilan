import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_params.freezed.dart';
part 'store_params.g.dart';

@freezed
class GetStoreByCityParams with _$GetStoreByCityParams {
  const factory GetStoreByCityParams({
    @Default(null) String? city,
  }) = _GetStoreByCityParams;

  factory GetStoreByCityParams.fromJson(Map<String, dynamic> json) =>
      _$GetStoreByCityParamsFromJson(json);
}

@freezed
class GetStoreByIdParams with _$GetStoreByIdParams {
  const factory GetStoreByIdParams({
    @Default(null) String? id,
  }) = _GetStoreByIdParams;

  factory GetStoreByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetStoreByIdParamsFromJson(json);
}

@freezed
class GetStoreByNameParams with _$GetStoreByNameParams {
  const factory GetStoreByNameParams({
    @Default(null) String? name,
  }) = _GetStoreByNameParams;

  factory GetStoreByNameParams.fromJson(Map<String, dynamic> json) =>
      _$GetStoreByNameParamsFromJson(json);
}

@freezed
class StoreRegisterParams with _$StoreRegisterParams {
  const factory StoreRegisterParams({
    @Default(null) Map<String, dynamic>? user,
    @Default(null) Map<String, dynamic>? store,
  }) = _StoreRegisterParams;

  factory StoreRegisterParams.fromJson(Map<String, dynamic> json) =>
      _$StoreRegisterParamsFromJson(json);
}

@freezed
class StoreUpdateParams with _$StoreUpdateParams {
  const factory StoreUpdateParams({
    @Default(null) String? id,
    @Default(null) String? name,
    @Default(null) String? phone,
    @Default(null) String? password,
    @Default(null) String? street,
    @Default(null) String? city,
    @Default(null) String? state,
    @Default(null) String? country,
    @Default(null) String? zipCode,
  }) = _StoreUpdateParams;

  factory StoreUpdateParams.fromJson(Map<String, dynamic> json) =>
      _$StoreUpdateParamsFromJson(json);
}

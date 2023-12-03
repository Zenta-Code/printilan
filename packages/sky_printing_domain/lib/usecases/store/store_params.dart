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
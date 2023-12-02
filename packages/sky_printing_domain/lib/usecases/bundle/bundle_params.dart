import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle_params.freezed.dart';
part 'bundle_params.g.dart';

@freezed
class GetBundleByIdParams with _$GetBundleByIdParams {
  const factory GetBundleByIdParams({
    @Default(null) String? id,
  }) = _GetBundleByIdParams;

  factory GetBundleByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetBundleByIdParamsFromJson(json);
}

@freezed
class GetBundleByNameParams with _$GetBundleByNameParams {
  const factory GetBundleByNameParams({
    @Default(null) String? name,
  }) = _GetBundleByNameParams;

  factory GetBundleByNameParams.fromJson(Map<String, dynamic> json) =>
      _$GetBundleByNameParamsFromJson(json);
}

@freezed
class GetBundleByStoreParams with _$GetBundleByStoreParams {
  const factory GetBundleByStoreParams({
    @Default(null) String? storeId,
  }) = _GetBundleByStoreParams;

  factory GetBundleByStoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetBundleByStoreParamsFromJson(json);
}

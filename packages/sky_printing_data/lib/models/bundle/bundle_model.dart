import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'bundle_model.freezed.dart';
part 'bundle_model.g.dart';

@freezed
class BundleModel with _$BundleModel {
  const factory BundleModel({
    String? storeId,
    String? name,
    String? desc,
    List? prices,
  }) = _BundleModel;

  const BundleModel._();

  factory BundleModel.fromJson(Map<String, dynamic> json) => _$BundleModelFromJson(json);

  BundleEntity toEntity() =>
      BundleEntity(storeId: storeId, name: name, desc: desc, prices: prices);
}

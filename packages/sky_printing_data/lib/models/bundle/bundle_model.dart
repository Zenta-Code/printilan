import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'bundle_model.freezed.dart';
part 'bundle_model.g.dart';

@freezed
class BundleModel with _$BundleModel {
  const factory BundleModel({
    @JsonKey(name: '_id') String? id,
    String? storeId,
    String? name,
    List<BundleOptionsModel>? options,
  }) = _BundleModel;

  const BundleModel._();

  factory BundleModel.fromJson(Map<String, dynamic> json) =>
      _$BundleModelFromJson(json);

  BundleEntity toEntity() => BundleEntity(
        id: id,
        storeId: storeId,
        name: name,
        options: options?.map((e) => e.toEntity()).toList(),
      );
}

@freezed
class BundleOptionsModel with _$BundleOptionsModel {
  const factory BundleOptionsModel({
    bool? color,
    int? price,
  }) = _BundleOptionsModel;

  const BundleOptionsModel._();

  factory BundleOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$BundleOptionsModelFromJson(json);

  BundleOptionsEntity toEntity() => BundleOptionsEntity(
        color: color,
        price: price,
      );
}

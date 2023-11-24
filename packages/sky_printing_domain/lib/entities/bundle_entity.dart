import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle_entity.freezed.dart';

@freezed
class BundleEntity with _$BundleEntity{
  const factory BundleEntity({
    String? storeId,
    String? name,
    String? desc,
    List? prices,
  }) = _BundleEntity;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'bundle_entity.freezed.dart';
part 'bundle_entity.g.dart';

@freezed
class BundleEntity with _$BundleEntity {
  @HiveType(typeId: 2, adapterName: 'BundleEntityAdapter')
  const factory BundleEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? storeId,
    @HiveField(2) String? name,
    @HiveField(4) List<BundleOptionsEntity>? options,
  }) = _BundleEntity;
}

@freezed
class BundleOptionsEntity with _$BundleOptionsEntity {
  @HiveType(typeId: 3, adapterName: 'BundleOptionsEntityAdapter')
  const factory BundleOptionsEntity({
    @HiveField(0) bool? color,
    @HiveField(1) int? price,
  }) = _BundleOptionsEntity;
}

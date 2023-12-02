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
    @HiveField(3) String? desc,
    @HiveField(4) List? prices,
  }) = _BundleEntity;
}

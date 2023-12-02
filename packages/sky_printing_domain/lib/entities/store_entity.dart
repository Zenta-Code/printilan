import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'store_entity.freezed.dart';
part 'store_entity.g.dart';

@freezed
class StoreEntity with _$StoreEntity {
  @HiveType(typeId: 2, adapterName: 'StoreEntityAdapter')
  const factory StoreEntity({
    @HiveField(0) @JsonKey(name: '_id') String? id,
    @HiveField(1) String? name,
    @HiveField(2) AddressEntity? address,
    @HiveField(3) String? phone,
    @HiveField(4) String? ownerId,
  }) = _StoreEntity;
}

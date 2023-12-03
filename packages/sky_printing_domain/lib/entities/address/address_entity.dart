import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'address_entity.freezed.dart';
part 'address_entity.g.dart';

@freezed
class AddressEntity with _$AddressEntity {
  @HiveType(typeId: 1, adapterName: 'AddressEntityAdapter')
  const factory AddressEntity({
    @HiveField(0) String? street,
    @HiveField(1) String? city,
    @HiveField(2) String? state,
    @HiveField(3) String? country,
    @HiveField(4) String? zipCode,
  }) = _AddressEntity;
}

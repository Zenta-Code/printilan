import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/address.dart';

part 'store_entity.freezed.dart';


@freezed
class StoreEntity with _$StoreEntity {
  const factory StoreEntity({
    String? name,
    Address? address,
    String? phone,
    String? ownerId,
  }) = _StoreEntity;

}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'store_entity.freezed.dart';

@freezed
class StoreEntity with _$StoreEntity {
  const factory StoreEntity({
    @JsonKey(name: '_id') String? id,
    String? name,
    AddressEntity? address,
    String? phone,
    String? ownerId,
  }) = _StoreEntity;
}

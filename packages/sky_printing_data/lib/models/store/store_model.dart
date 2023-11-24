import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/address/address_model.dart';
import 'package:sky_printing_domain/entities/store_entity.dart';

part 'store_model.freezed.dart';
part 'store_model.g.dart';

@freezed
class StoreModel with _$StoreModel {
  const factory StoreModel({
    @JsonKey(name: '_id') String? id,
    String? name,
    AddressModel? address,
    String? phone,
    String? ownerId,
  }) = _StoreModel;

  const StoreModel._();

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);

  StoreEntity toEntity() => StoreEntity(
        id: id,
        name: name,
        address: address!.toEntity(),
        phone: phone,
        ownerId: ownerId,
      );
}

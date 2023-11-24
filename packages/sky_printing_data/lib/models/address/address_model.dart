import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    String? street,
    String? city,
    String? state,
    String? country,
    String? zipcode,
  }) = _AddressModel;

  const AddressModel._();

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  AddressEntity toEntity() => AddressEntity(
      street: street,
      city: city,
      state: state,
      country: country,
      zipcode: zipcode);
}

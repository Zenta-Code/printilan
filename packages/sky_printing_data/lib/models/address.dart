import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? city,
    String? state,
    String? country,
    String? zipcode,
  }) = _Address;

  const Address._();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  AddressEntity toEntity() => AddressEntity(
      street: street,
      city: city,
      state: state,
      country: country,
      zipcode: zipcode);
}

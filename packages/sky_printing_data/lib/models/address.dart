import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) =_Address;

  const Address._();

  factory Address.fromJson(Map<String, dynamic>json) =>
   _$AddressFromJson(json);

  Address toEntity() => Address(street: street, city: city, state: state, country: country, zipcode: zipcode);
  
}

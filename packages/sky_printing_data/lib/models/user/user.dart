import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/address/address_model.dart'; 

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? email,
    String? password,
    AddressModel? address,
    String? phone,
    String? role,
  }) =_User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) =>
    _$UserFromJson(json);

  User toEntity() => User(name: name,email: email,password: password,phone: phone,role: role);
  
}
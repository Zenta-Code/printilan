import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/address/address_model.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? email,
    String? password,
    AddressModel? address,
    String? phone,
    String? role,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() => UserEntity(
        id: id,
        name: name,
        email: email,
        password: password,
        address: address?.toEntity(),
        phone: phone,
        role: role,
      );
}

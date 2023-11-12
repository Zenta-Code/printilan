import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/address.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? name,
    String? email,
    String? password,
    Address? address,
    String? phone,
    String? role,
  }) =_UserEntity;
  
}
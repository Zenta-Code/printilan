import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? email,
    String? password,
    AddressEntity? address,
    String? phone,
    String? role,
  }) = _UserEntity;
}

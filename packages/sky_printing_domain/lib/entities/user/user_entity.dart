import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  @HiveType(typeId: 0, adapterName: 'UserEntityAdapter')
  const factory UserEntity({
    @JsonKey(name: '_id') @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? password,
    @HiveField(4) AddressEntity? address,
    @HiveField(5) String? phone,
    @HiveField(6) String? role,
  }) = _UserEntity;
}

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

// @HiveType(typeId: 0, adapterName: 'UserEntityAdapter')
// class UserEntityAdapter extends TypeAdapter<UserEntity> {
//   @override
//   final typeId = 0;

//   @override
//   UserEntity read(BinaryReader reader) {
//     return UserEntity(
//       id: reader.read(),
//       name: reader.read(),
//       email: reader.read(),
//       password: reader.read(),
//       address: reader.read(),
//       phone: reader.read(),
//       role: reader.read(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, UserEntity obj) {
//     writer.write(obj.id);
//     writer.write(obj.name);
//     writer.write(obj.email);
//     writer.write(obj.password);
//     writer.write(obj.address);
//     writer.write(obj.phone);
//     writer.write(obj.role);
//   }
// }

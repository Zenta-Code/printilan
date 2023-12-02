// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreEntityAdapter extends TypeAdapter<_$StoreEntityImpl> {
  @override
  final int typeId = 2;

  @override
  _$StoreEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StoreEntityImpl(
      id: fields[0] as String?,
      name: fields[1] as String?,
      address: fields[2] as AddressEntity?,
      phone: fields[3] as String?,
      ownerId: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$StoreEntityImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.ownerId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

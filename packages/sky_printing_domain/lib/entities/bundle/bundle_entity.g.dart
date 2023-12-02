// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bundle_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BundleEntityAdapter extends TypeAdapter<_$BundleEntityImpl> {
  @override
  final int typeId = 2;

  @override
  _$BundleEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BundleEntityImpl(
      id: fields[0] as String?,
      storeId: fields[1] as String?,
      name: fields[2] as String?,
      desc: fields[3] as String?,
      prices: (fields[4] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$BundleEntityImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.storeId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.desc)
      ..writeByte(4)
      ..write(obj.prices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BundleEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

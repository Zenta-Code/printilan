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
      options: (fields[4] as List?)?.cast<BundleOptionsEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$BundleEntityImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.storeId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.options);
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

class BundleOptionsEntityAdapter
    extends TypeAdapter<_$BundleOptionsEntityImpl> {
  @override
  final int typeId = 3;

  @override
  _$BundleOptionsEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BundleOptionsEntityImpl(
      color: fields[0] as bool?,
      price: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$BundleOptionsEntityImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.color)
      ..writeByte(1)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BundleOptionsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

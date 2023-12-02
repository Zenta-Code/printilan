// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentEntityAdapter extends TypeAdapter<_$DocumentEntityImpl> {
  @override
  final int typeId = 3;

  @override
  _$DocumentEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DocumentEntityImpl(
      id: fields[0] as String?,
      name: fields[1] as String?,
      type: fields[2] as String?,
      count: fields[3] as int?,
      size: fields[4] as String?,
      color: fields[5] as bool?,
      price: fields[6] as int?,
      copies: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$DocumentEntityImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.size)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.copies);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocumentEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

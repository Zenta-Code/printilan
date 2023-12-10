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
      fileName: fields[1] as String?,
      filePath: fields[2] as String?,
      type: fields[3] as String?,
      totalPage: fields[4] as int?,
      size: fields[5] as String?,
      color: fields[6] as bool?,
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
      ..write(obj.fileName)
      ..writeByte(2)
      ..write(obj.filePath)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.totalPage)
      ..writeByte(5)
      ..write(obj.size)
      ..writeByte(6)
      ..write(obj.color)
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

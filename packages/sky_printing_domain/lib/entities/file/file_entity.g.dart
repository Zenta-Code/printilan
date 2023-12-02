// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileEntityAdapter extends TypeAdapter<_$FileEntityImpl> {
  @override
  final int typeId = 3;

  @override
  _$FileEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FileEntityImpl(
      result: fields[0] as FilePickerResult?,
    );
  }

  @override
  void write(BinaryWriter writer, _$FileEntityImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.result);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

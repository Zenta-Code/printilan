// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_enitity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrinterEntityAdapter extends TypeAdapter<_$PrinterEntityImpl> {
  @override
  final int typeId = 4;

  @override
  _$PrinterEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PrinterEntityImpl(
      id: fields[0] as String?,
      storeId: fields[1] as String?,
      printerName: fields[2] as String?,
      countJobs: fields[3] as int?,
      printerOnline: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$PrinterEntityImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.storeId)
      ..writeByte(2)
      ..write(obj.printerName)
      ..writeByte(3)
      ..write(obj.countJobs)
      ..writeByte(4)
      ..write(obj.printerOnline);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrinterEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

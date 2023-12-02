// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderEntityAdapter extends TypeAdapter<_$OrderEntityImpl> {
  @override
  final int typeId = 2;

  @override
  _$OrderEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OrderEntityImpl(
      id: fields[0] as String?,
      userId: fields[1] as String?,
      storeId: fields[2] as String?,
      documentId: fields[3] as String?,
      user: fields[4] as UserEntity?,
      store: fields[5] as StoreEntity?,
      document: fields[6] as DocumentEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, _$OrderEntityImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.storeId)
      ..writeByte(3)
      ..write(obj.documentId)
      ..writeByte(4)
      ..write(obj.user)
      ..writeByte(5)
      ..write(obj.store)
      ..writeByte(6)
      ..write(obj.document);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      bundleId: fields[4] as String?,
      isColor: fields[5] as bool?,
      status: fields[6] as String?,
      totalPrice: fields[7] as int?,
      createdAt: fields[8] as String?,
      updatedAt: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$OrderEntityImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.storeId)
      ..writeByte(3)
      ..write(obj.documentId)
      ..writeByte(4)
      ..write(obj.bundleId)
      ..writeByte(5)
      ..write(obj.isColor)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.totalPrice)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt);
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

class OrderEntityResponseAdapter
    extends TypeAdapter<_$OrderEntityResponseImpl> {
  @override
  final int typeId = 1;

  @override
  _$OrderEntityResponseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OrderEntityResponseImpl(
      userId: fields[0] as String?,
      storeId: fields[1] as String?,
      documentId: fields[2] as String?,
      order: fields[3] as OrderEntity?,
      user: fields[4] as UserEntity?,
      store: fields[5] as StoreEntity?,
      document: fields[6] as DocumentEntity?,
      totalPrice: fields[7] as int?,
      bundle: fields[8] as BundleEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, _$OrderEntityResponseImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.storeId)
      ..writeByte(2)
      ..write(obj.documentId)
      ..writeByte(3)
      ..write(obj.order)
      ..writeByte(4)
      ..write(obj.user)
      ..writeByte(5)
      ..write(obj.store)
      ..writeByte(6)
      ..write(obj.document)
      ..writeByte(7)
      ..write(obj.totalPrice)
      ..writeByte(8)
      ..write(obj.bundle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderEntityResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

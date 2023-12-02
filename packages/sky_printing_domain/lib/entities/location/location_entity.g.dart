// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationEntityAdapter extends TypeAdapter<_$LocationEntityImpl> {
  @override
  final int typeId = 2;

  @override
  _$LocationEntityImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LocationEntityImpl(
      latitude: fields[0] as double?,
      longitude: fields[1] as double?,
      accuracy: fields[2] as double?,
      verticalAccuracy: fields[3] as double?,
      altitude: fields[4] as double?,
      speed: fields[5] as double?,
      speedAccuracy: fields[6] as double?,
      heading: fields[7] as double?,
      time: fields[8] as double?,
      isMock: fields[9] as bool?,
      headingAccuracy: fields[10] as double?,
      elapsedRealtimeNanos: fields[11] as double?,
      elapsedRealtimeUncertaintyNanos: fields[12] as double?,
      satelliteNumber: fields[13] as int?,
      provider: fields[14] as String?,
      placemarks: (fields[15] as List?)?.cast<Placemark>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$LocationEntityImpl obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude)
      ..writeByte(2)
      ..write(obj.accuracy)
      ..writeByte(3)
      ..write(obj.verticalAccuracy)
      ..writeByte(4)
      ..write(obj.altitude)
      ..writeByte(5)
      ..write(obj.speed)
      ..writeByte(6)
      ..write(obj.speedAccuracy)
      ..writeByte(7)
      ..write(obj.heading)
      ..writeByte(8)
      ..write(obj.time)
      ..writeByte(9)
      ..write(obj.isMock)
      ..writeByte(10)
      ..write(obj.headingAccuracy)
      ..writeByte(11)
      ..write(obj.elapsedRealtimeNanos)
      ..writeByte(12)
      ..write(obj.elapsedRealtimeUncertaintyNanos)
      ..writeByte(13)
      ..write(obj.satelliteNumber)
      ..writeByte(14)
      ..write(obj.provider)
      ..writeByte(15)
      ..write(obj.placemarks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

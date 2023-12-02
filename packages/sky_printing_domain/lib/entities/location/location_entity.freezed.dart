// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEntity {
  @HiveField(0)
  double? get latitude => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get longitude => throw _privateConstructorUsedError;
  @HiveField(2)
  double? get accuracy => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get verticalAccuracy => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get altitude => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get speed => throw _privateConstructorUsedError;
  @HiveField(6)
  double? get speedAccuracy => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get heading => throw _privateConstructorUsedError;
  @HiveField(8)
  double? get time => throw _privateConstructorUsedError;
  @HiveField(9)
  bool? get isMock => throw _privateConstructorUsedError;
  @HiveField(10)
  double? get headingAccuracy => throw _privateConstructorUsedError;
  @HiveField(11)
  double? get elapsedRealtimeNanos => throw _privateConstructorUsedError;
  @HiveField(12)
  double? get elapsedRealtimeUncertaintyNanos =>
      throw _privateConstructorUsedError;
  @HiveField(13)
  int? get satelliteNumber => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get provider => throw _privateConstructorUsedError;
  @HiveField(15)
  List<Placemark>? get placemarks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) then) =
      _$LocationEntityCopyWithImpl<$Res, LocationEntity>;
  @useResult
  $Res call(
      {@HiveField(0) double? latitude,
      @HiveField(1) double? longitude,
      @HiveField(2) double? accuracy,
      @HiveField(3) double? verticalAccuracy,
      @HiveField(4) double? altitude,
      @HiveField(5) double? speed,
      @HiveField(6) double? speedAccuracy,
      @HiveField(7) double? heading,
      @HiveField(8) double? time,
      @HiveField(9) bool? isMock,
      @HiveField(10) double? headingAccuracy,
      @HiveField(11) double? elapsedRealtimeNanos,
      @HiveField(12) double? elapsedRealtimeUncertaintyNanos,
      @HiveField(13) int? satelliteNumber,
      @HiveField(14) String? provider,
      @HiveField(15) List<Placemark>? placemarks});
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res, $Val extends LocationEntity>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
    Object? verticalAccuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
    Object? heading = freezed,
    Object? time = freezed,
    Object? isMock = freezed,
    Object? headingAccuracy = freezed,
    Object? elapsedRealtimeNanos = freezed,
    Object? elapsedRealtimeUncertaintyNanos = freezed,
    Object? satelliteNumber = freezed,
    Object? provider = freezed,
    Object? placemarks = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      verticalAccuracy: freezed == verticalAccuracy
          ? _value.verticalAccuracy
          : verticalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speedAccuracy: freezed == speedAccuracy
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double?,
      isMock: freezed == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as bool?,
      headingAccuracy: freezed == headingAccuracy
          ? _value.headingAccuracy
          : headingAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeNanos: freezed == elapsedRealtimeNanos
          ? _value.elapsedRealtimeNanos
          : elapsedRealtimeNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeUncertaintyNanos: freezed ==
              elapsedRealtimeUncertaintyNanos
          ? _value.elapsedRealtimeUncertaintyNanos
          : elapsedRealtimeUncertaintyNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      satelliteNumber: freezed == satelliteNumber
          ? _value.satelliteNumber
          : satelliteNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      placemarks: freezed == placemarks
          ? _value.placemarks
          : placemarks // ignore: cast_nullable_to_non_nullable
              as List<Placemark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationEntityImplCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$$LocationEntityImplCopyWith(_$LocationEntityImpl value,
          $Res Function(_$LocationEntityImpl) then) =
      __$$LocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) double? latitude,
      @HiveField(1) double? longitude,
      @HiveField(2) double? accuracy,
      @HiveField(3) double? verticalAccuracy,
      @HiveField(4) double? altitude,
      @HiveField(5) double? speed,
      @HiveField(6) double? speedAccuracy,
      @HiveField(7) double? heading,
      @HiveField(8) double? time,
      @HiveField(9) bool? isMock,
      @HiveField(10) double? headingAccuracy,
      @HiveField(11) double? elapsedRealtimeNanos,
      @HiveField(12) double? elapsedRealtimeUncertaintyNanos,
      @HiveField(13) int? satelliteNumber,
      @HiveField(14) String? provider,
      @HiveField(15) List<Placemark>? placemarks});
}

/// @nodoc
class __$$LocationEntityImplCopyWithImpl<$Res>
    extends _$LocationEntityCopyWithImpl<$Res, _$LocationEntityImpl>
    implements _$$LocationEntityImplCopyWith<$Res> {
  __$$LocationEntityImplCopyWithImpl(
      _$LocationEntityImpl _value, $Res Function(_$LocationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
    Object? verticalAccuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
    Object? heading = freezed,
    Object? time = freezed,
    Object? isMock = freezed,
    Object? headingAccuracy = freezed,
    Object? elapsedRealtimeNanos = freezed,
    Object? elapsedRealtimeUncertaintyNanos = freezed,
    Object? satelliteNumber = freezed,
    Object? provider = freezed,
    Object? placemarks = freezed,
  }) {
    return _then(_$LocationEntityImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      verticalAccuracy: freezed == verticalAccuracy
          ? _value.verticalAccuracy
          : verticalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speedAccuracy: freezed == speedAccuracy
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double?,
      isMock: freezed == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as bool?,
      headingAccuracy: freezed == headingAccuracy
          ? _value.headingAccuracy
          : headingAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeNanos: freezed == elapsedRealtimeNanos
          ? _value.elapsedRealtimeNanos
          : elapsedRealtimeNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeUncertaintyNanos: freezed ==
              elapsedRealtimeUncertaintyNanos
          ? _value.elapsedRealtimeUncertaintyNanos
          : elapsedRealtimeUncertaintyNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      satelliteNumber: freezed == satelliteNumber
          ? _value.satelliteNumber
          : satelliteNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      placemarks: freezed == placemarks
          ? _value._placemarks
          : placemarks // ignore: cast_nullable_to_non_nullable
              as List<Placemark>?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 2, adapterName: 'LocationEntityAdapter')
class _$LocationEntityImpl implements _LocationEntity {
  const _$LocationEntityImpl(
      {@HiveField(0) this.latitude,
      @HiveField(1) this.longitude,
      @HiveField(2) this.accuracy,
      @HiveField(3) this.verticalAccuracy,
      @HiveField(4) this.altitude,
      @HiveField(5) this.speed,
      @HiveField(6) this.speedAccuracy,
      @HiveField(7) this.heading,
      @HiveField(8) this.time,
      @HiveField(9) this.isMock,
      @HiveField(10) this.headingAccuracy,
      @HiveField(11) this.elapsedRealtimeNanos,
      @HiveField(12) this.elapsedRealtimeUncertaintyNanos,
      @HiveField(13) this.satelliteNumber,
      @HiveField(14) this.provider,
      @HiveField(15) final List<Placemark>? placemarks})
      : _placemarks = placemarks;

  @override
  @HiveField(0)
  final double? latitude;
  @override
  @HiveField(1)
  final double? longitude;
  @override
  @HiveField(2)
  final double? accuracy;
  @override
  @HiveField(3)
  final double? verticalAccuracy;
  @override
  @HiveField(4)
  final double? altitude;
  @override
  @HiveField(5)
  final double? speed;
  @override
  @HiveField(6)
  final double? speedAccuracy;
  @override
  @HiveField(7)
  final double? heading;
  @override
  @HiveField(8)
  final double? time;
  @override
  @HiveField(9)
  final bool? isMock;
  @override
  @HiveField(10)
  final double? headingAccuracy;
  @override
  @HiveField(11)
  final double? elapsedRealtimeNanos;
  @override
  @HiveField(12)
  final double? elapsedRealtimeUncertaintyNanos;
  @override
  @HiveField(13)
  final int? satelliteNumber;
  @override
  @HiveField(14)
  final String? provider;
  final List<Placemark>? _placemarks;
  @override
  @HiveField(15)
  List<Placemark>? get placemarks {
    final value = _placemarks;
    if (value == null) return null;
    if (_placemarks is EqualUnmodifiableListView) return _placemarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationEntity(latitude: $latitude, longitude: $longitude, accuracy: $accuracy, verticalAccuracy: $verticalAccuracy, altitude: $altitude, speed: $speed, speedAccuracy: $speedAccuracy, heading: $heading, time: $time, isMock: $isMock, headingAccuracy: $headingAccuracy, elapsedRealtimeNanos: $elapsedRealtimeNanos, elapsedRealtimeUncertaintyNanos: $elapsedRealtimeUncertaintyNanos, satelliteNumber: $satelliteNumber, provider: $provider, placemarks: $placemarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationEntityImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.verticalAccuracy, verticalAccuracy) ||
                other.verticalAccuracy == verticalAccuracy) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                other.speedAccuracy == speedAccuracy) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isMock, isMock) || other.isMock == isMock) &&
            (identical(other.headingAccuracy, headingAccuracy) ||
                other.headingAccuracy == headingAccuracy) &&
            (identical(other.elapsedRealtimeNanos, elapsedRealtimeNanos) ||
                other.elapsedRealtimeNanos == elapsedRealtimeNanos) &&
            (identical(other.elapsedRealtimeUncertaintyNanos,
                    elapsedRealtimeUncertaintyNanos) ||
                other.elapsedRealtimeUncertaintyNanos ==
                    elapsedRealtimeUncertaintyNanos) &&
            (identical(other.satelliteNumber, satelliteNumber) ||
                other.satelliteNumber == satelliteNumber) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other._placemarks, _placemarks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      accuracy,
      verticalAccuracy,
      altitude,
      speed,
      speedAccuracy,
      heading,
      time,
      isMock,
      headingAccuracy,
      elapsedRealtimeNanos,
      elapsedRealtimeUncertaintyNanos,
      satelliteNumber,
      provider,
      const DeepCollectionEquality().hash(_placemarks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationEntityImplCopyWith<_$LocationEntityImpl> get copyWith =>
      __$$LocationEntityImplCopyWithImpl<_$LocationEntityImpl>(
          this, _$identity);
}

abstract class _LocationEntity implements LocationEntity {
  const factory _LocationEntity(
      {@HiveField(0) final double? latitude,
      @HiveField(1) final double? longitude,
      @HiveField(2) final double? accuracy,
      @HiveField(3) final double? verticalAccuracy,
      @HiveField(4) final double? altitude,
      @HiveField(5) final double? speed,
      @HiveField(6) final double? speedAccuracy,
      @HiveField(7) final double? heading,
      @HiveField(8) final double? time,
      @HiveField(9) final bool? isMock,
      @HiveField(10) final double? headingAccuracy,
      @HiveField(11) final double? elapsedRealtimeNanos,
      @HiveField(12) final double? elapsedRealtimeUncertaintyNanos,
      @HiveField(13) final int? satelliteNumber,
      @HiveField(14) final String? provider,
      @HiveField(15) final List<Placemark>? placemarks}) = _$LocationEntityImpl;

  @override
  @HiveField(0)
  double? get latitude;
  @override
  @HiveField(1)
  double? get longitude;
  @override
  @HiveField(2)
  double? get accuracy;
  @override
  @HiveField(3)
  double? get verticalAccuracy;
  @override
  @HiveField(4)
  double? get altitude;
  @override
  @HiveField(5)
  double? get speed;
  @override
  @HiveField(6)
  double? get speedAccuracy;
  @override
  @HiveField(7)
  double? get heading;
  @override
  @HiveField(8)
  double? get time;
  @override
  @HiveField(9)
  bool? get isMock;
  @override
  @HiveField(10)
  double? get headingAccuracy;
  @override
  @HiveField(11)
  double? get elapsedRealtimeNanos;
  @override
  @HiveField(12)
  double? get elapsedRealtimeUncertaintyNanos;
  @override
  @HiveField(13)
  int? get satelliteNumber;
  @override
  @HiveField(14)
  String? get provider;
  @override
  @HiveField(15)
  List<Placemark>? get placemarks;
  @override
  @JsonKey(ignore: true)
  _$$LocationEntityImplCopyWith<_$LocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

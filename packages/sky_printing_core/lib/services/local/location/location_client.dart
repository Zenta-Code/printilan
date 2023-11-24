import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart' hide Location;
import 'package:location/location.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/location/location_model.dart';

class LocationClient {
  bool _isUnitTest = false;
  late Location _location;
  List<Placemark> placemark = [
    Placemark(
      subAdministrativeArea: '',
      locality: '',
    )
  ];
  LocationClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;
    _location = _createLocation();
  }

  Location get location {
    if (_isUnitTest) {
      return _location;
    } else {
      return _createLocation();
    }
  }

  Location _createLocation() => Location();

  Future<PermissionStatus> hasPermission() async {
    return await location.hasPermission();
  }

  Future<PermissionStatus> requestPermission() async {
    return await location.requestPermission();
  }

  Future<Either<Failure, LocationModel>> getLocation() async {
    final perm = await hasPermission();
    log.i("Permission status: $perm");
    if (perm == PermissionStatus.granted ||
        perm == PermissionStatus.grantedLimited) {
      await requestPermission();
      try {
        final locationData = await location.getLocation();
        placemark = await placemarkFromCoordinates(
            locationData.latitude!, locationData.longitude!);
        return Right(
          LocationModel(
            latitude: locationData.latitude,
            longitude: locationData.longitude,
            accuracy: locationData.accuracy,
            verticalAccuracy: locationData.verticalAccuracy,
            altitude: locationData.altitude,
            speed: locationData.speed,
            speedAccuracy: locationData.speedAccuracy,
            heading: locationData.heading,
            time: locationData.time,
            isMock: locationData.isMock,
            headingAccuracy: locationData.headingAccuracy,
            elapsedRealtimeNanos: locationData.elapsedRealtimeNanos,
            elapsedRealtimeUncertaintyNanos:
                locationData.elapsedRealtimeUncertaintyNanos,
            satelliteNumber: locationData.satelliteNumber,
            provider: locationData.provider,
            placemarks: placemark,
          ),
        );
      } catch (e) {
        return Left(LocationFailure(message: e.toString()));
      }
    } else {
      await requestPermission();
      return const Left(
        PermissionFailure(
          message: "Permission denied, please enable location permission",
        ),
      );
    }
  }

  Stream<LocationData> get onLocationChanged {
    return location.onLocationChanged;
  }
}

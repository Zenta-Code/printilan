import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class AddressRepository {
  Future<Either<Failure, String>> getDistrictByPostalCode(
      GetDistrictByPostalCodeParams postalCode);
}

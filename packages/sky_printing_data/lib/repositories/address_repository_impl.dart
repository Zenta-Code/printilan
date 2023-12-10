import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class AddressRepositoryImpl implements AddressRepository {
  final AddressRemoteDataSource _remoteDataSource;

  const AddressRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, String>> getDistrictByPostalCode(
      GetDistrictByPostalCodeParams postalCode) async {
    final res = await _remoteDataSource.getAddressByPostalCode(postalCode);
    return res.fold(
      (failure) => Left(failure),
      (address) => Right(
        address,
      ),
    );
  }
}

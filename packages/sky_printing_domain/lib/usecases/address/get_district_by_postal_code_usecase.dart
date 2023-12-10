import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/repositories/address_repositories.dart';
import 'package:sky_printing_domain/usecases/address/address.dart';

class GetDistrictByPostalCodeUsecase
    implements UseCase<String, GetDistrictByPostalCodeParams> {
  final AddressRepository _repo;

  GetDistrictByPostalCodeUsecase(this._repo);

  @override
  Future<Either<Failure, String>> call(GetDistrictByPostalCodeParams params) {
    return _repo.getDistrictByPostalCode(params);
  }
}

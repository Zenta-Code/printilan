import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetLocation extends UseCase<LocationEntity, LocationParams> {
  final LocationRepository _repo;

  GetLocation(this._repo);

  @override
  Future<Either<Failure, LocationEntity>> call(LocationParams params) =>
      _repo.getLocation(params);
}

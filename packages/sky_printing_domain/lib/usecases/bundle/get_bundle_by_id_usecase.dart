import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetBundleByIdUsecase extends UseCase<BundleEntity, GetBundleByIdParams> {
  final BundleRepository _repo;

  GetBundleByIdUsecase(this._repo);

  @override
  Future<Either<Failure, BundleEntity>> call(GetBundleByIdParams params) =>
      _repo.getBundleById(params);
}

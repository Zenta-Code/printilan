import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetBundleByNameUsecase
    extends UseCase<List<BundleEntity>, GetBundleByNameParams> {
  final BundleRepository _repo;

  GetBundleByNameUsecase(this._repo);

  @override
  Future<Either<Failure, List<BundleEntity>>> call(
          GetBundleByNameParams params) =>
      _repo.getBundleByName(params);
}

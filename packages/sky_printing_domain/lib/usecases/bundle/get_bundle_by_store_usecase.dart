import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetBundleByStoreUsecase
    extends UseCase<List<BundleEntity>, GetBundleByStoreParams> {
  final BundleRepository _repo;

  GetBundleByStoreUsecase(this._repo);

  @override
  Future<Either<Failure, List<BundleEntity>>> call(
          GetBundleByStoreParams params) =>
      _repo.getBundleByStore(params);
}

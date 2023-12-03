import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetStoreByCityUsecase
    extends UseCase<
    Tuple2<List<StoreEntity>, List<BundleEntity>>, GetStoreByCityParams> {
  final StoreRepository _repo;

  GetStoreByCityUsecase(this._repo);

  @override
  Future<Either<Failure, Tuple2<List<StoreEntity>, List<BundleEntity>>>> call(
          GetStoreByCityParams params) =>
      _repo.getStoreByCity(params);
}

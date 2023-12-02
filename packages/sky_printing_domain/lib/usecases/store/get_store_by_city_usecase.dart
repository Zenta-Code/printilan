import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetStoreByCityUsecase
    extends UseCase<List<StoreEntity>, GetStoreByCityParams> {
  final StoreRepository _repo;

  GetStoreByCityUsecase(this._repo);

  @override
  Future<Either<Failure, List<StoreEntity>>> call(
          GetStoreByCityParams params) =>
      _repo.getStoreByCity(params);
}

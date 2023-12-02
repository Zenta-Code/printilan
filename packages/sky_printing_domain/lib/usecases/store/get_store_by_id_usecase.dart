import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetStoreByIdUsecase extends UseCase<StoreEntity, GetStoreByIdParams> {
  final StoreRepository _repo;

  GetStoreByIdUsecase(this._repo);

  @override
  Future<Either<Failure, StoreEntity>> call(GetStoreByIdParams params) =>
      _repo.getStoreById(params);
}

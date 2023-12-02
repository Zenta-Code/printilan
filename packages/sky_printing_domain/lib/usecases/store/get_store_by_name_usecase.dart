import "package:dartz/dartz.dart";
import "package:sky_printing_core/sky_printing_core.dart";
import "package:sky_printing_domain/sky_printing_domain.dart";

class GetStoreByNameUsecase extends UseCase<StoreEntity, GetStoreByNameParams> {
  final StoreRepository _repo;

  GetStoreByNameUsecase(this._repo);

  @override
  Future<Either<Failure, StoreEntity>> call(GetStoreByNameParams params) =>
      _repo.getStoreByName(params);
}

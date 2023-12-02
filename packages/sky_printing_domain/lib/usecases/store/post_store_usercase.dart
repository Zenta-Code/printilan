import "package:dartz/dartz.dart";
import "package:sky_printing_core/sky_printing_core.dart";
import "package:sky_printing_domain/sky_printing_domain.dart";

class PostStoreUsecase extends UseCase<StoreEntity, StoreRegisterParams> {
  final StoreRepository _repo;

  PostStoreUsecase(this._repo);

  @override
  Future<Either<Failure, StoreEntity>> call(StoreRegisterParams params) =>
      _repo.postStore(params);
}

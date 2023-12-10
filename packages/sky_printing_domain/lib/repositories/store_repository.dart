import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class StoreRepository {
  Future<Either<Failure, StoreEntity>> getStoreById(
    GetStoreByIdParams params,
  );
  Future<Either<Failure, StoreEntity>> getStoreByName(
    GetStoreByNameParams params,
  );
  Future<Either<Failure, Tuple2<List<StoreEntity>, List<BundleEntity>>>>
      getStoreByCity(
    GetStoreByCityParams params,
  );
  Future<Either<Failure, List<StoreEntity>>> getStoreAll(
    NoParams params,
  );
  Future<Either<Failure, StoreEntity>> postStore(
    StoreRegisterParams params,
  );

  Future<Either<Failure, Tuple2<StoreEntity, UserEntity>>> updateStore(
    StoreUpdateParams params,
  );
}

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/store_entity.dart';
import 'package:sky_printing_domain/usecases/a_usecases.dart';

abstract class StoreRepository {
  Future<Either<Failure, StoreEntity>> getStoreById(
    GetStoreByIdParams params,
  );
  Future<Either<Failure, StoreEntity>> getStoreByName(
    GetStoreByNameParams params,
  );
  Future<Either<Failure, List<StoreEntity>>> getStoreByCity(
    GetStoreByCityParams params,
  );
  Future<Either<Failure, List<StoreEntity>>> getStoreAll(
    NoParams params,
  );
}

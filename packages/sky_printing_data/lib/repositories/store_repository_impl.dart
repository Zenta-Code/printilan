import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_data/sources/remote/store_remote_data_source.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class StoreRepositoryImpl implements StoreRepository {
  final StoreRemoteDataSource storeRemoteDataSource;

  const StoreRepositoryImpl(this.storeRemoteDataSource);

  @override
  Future<Either<Failure, List<StoreEntity>>> getStoreAll(
    NoParams params,
  ) async {
    final res = await storeRemoteDataSource.getStoreAll(params);
    return res.fold(
      (failure) => Left(failure),
      (store) => Right(
        store
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<StoreEntity>>> getStoreByCity(
    GetStoreByCityParams params,
  ) async {
    final res = await storeRemoteDataSource.getStoreByCity(params);
    return res.fold(
      (failure) => Left(failure),
      (store) => Right(
        store
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, StoreEntity>> getStoreById(
    GetStoreByIdParams params,
  ) async {
    final res = await storeRemoteDataSource.getStoreById(params);
    return res.fold(
      (failure) => Left(failure),
      (store) => Right(
        store.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, StoreEntity>> getStoreByName(
    GetStoreByNameParams params,
  ) async {
    final res = await storeRemoteDataSource.getStoreByName(params);
    return res.fold(
      (failure) => Left(failure),
      (store) => Right(
        store.toEntity(),
      ),
    );
  }
}

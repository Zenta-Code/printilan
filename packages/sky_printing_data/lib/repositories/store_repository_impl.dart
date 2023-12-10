import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sources/remote/store_remote_data_source.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class StoreRepositoryImpl implements StoreRepository {
  final StoreRemoteDataSource _remoteDataSource;
  final MainBoxMixin mainBoxMixin;

  const StoreRepositoryImpl(this._remoteDataSource, this.mainBoxMixin);

  @override
  Future<Either<Failure, List<StoreEntity>>> getStoreAll(
    NoParams params,
  ) async {
    final res = await _remoteDataSource.getStoreAll(params);
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
  Future<Either<Failure, Tuple2<List<StoreEntity>, List<BundleEntity>>>>
      getStoreByCity(
    GetStoreByCityParams params,
  ) async {
    final res = await _remoteDataSource.getStoreByCity(params);
    return res.fold(
      (failure) => Left(failure),
      (success) => Right(
        Tuple2(
          success.value1.map((e) => e.toEntity()).toList(),
          success.value2.map((e) => e.toEntity()).toList(),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, StoreEntity>> getStoreById(
    GetStoreByIdParams params,
  ) async {
    final res = await _remoteDataSource.getStoreById(params);
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
    final res = await _remoteDataSource.getStoreByName(params);
    return res.fold(
      (failure) => Left(failure),
      (store) => Right(
        store.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, StoreEntity>> postStore(
    StoreRegisterParams params,
  ) async {
    final res = await _remoteDataSource.postStore(params);
    return res.fold(
      (failure) => Left(failure),
      (store) => Right(
        store.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, Tuple2<StoreEntity, UserEntity>>> updateStore(
    StoreUpdateParams params,
  ) async {
    final res = await _remoteDataSource.updateStore(params);
    return res.fold((failure) => Left(failure), (store) {
      mainBoxMixin.removeData(MainBoxKeys.store);
      mainBoxMixin.addData<StoreEntity>(
        MainBoxKeys.store,
        store.value1.toEntity(),
      );
      mainBoxMixin.removeData(MainBoxKeys.user);
      mainBoxMixin.addData<UserEntity>(
        MainBoxKeys.user,
        store.value2.toEntity(),
      );
      return Right(
        Tuple2(
          store.value1.toEntity(),
          store.value2.toEntity(),
        ),
      );
    });
  }
}

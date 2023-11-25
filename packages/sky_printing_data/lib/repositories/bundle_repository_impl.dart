import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class BundleRepositoryImpl implements BundleRepository {
  final BundleRemoteDataSource _remoteDataSource;

  const BundleRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, BundleEntity>> getBundleById(
    GetBundleByIdParams params,
  ) async {
    final res = await _remoteDataSource.getBundleById(params);
    return res.fold(
      (failure) => Left(failure),
      (bundle) => Right(
        bundle.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<BundleEntity>>> getBundleByName(
    GetBundleByNameParams params,
  ) async {
    final res = await _remoteDataSource.getBundleByName(params);
    return res.fold(
      (failure) => Left(failure),
      (bundle) => Right(
        bundle
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<BundleEntity>>> getBundleByStore(
    GetBundleByStoreParams params,
  ) async {
    final res = await _remoteDataSource.getBundleByStore(params);
    return res.fold(
      (failure) => Left(failure),
      (bundle) => Right(
        bundle
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
      ),
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class BundleRepository {
  Future<Either<Failure, List<BundleEntity>>> getBundleByStore(
    GetBundleByStoreParams params,
  );

  Future<Either<Failure, List<BundleEntity>>> getBundleByName(
    GetBundleByNameParams params,
  );

  Future<Either<Failure, BundleEntity>> getBundleById(
    GetBundleByIdParams params,
  );
}

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class PutStoreUsecase extends UseCase<Tuple2<StoreEntity,UserEntity>, StoreUpdateParams> {
  final StoreRepository _repo;

  PutStoreUsecase(this._repo);

  @override
  Future<Either<Failure, Tuple2<StoreEntity,UserEntity>>> call(StoreUpdateParams params) =>
      _repo.updateStore(params);
}

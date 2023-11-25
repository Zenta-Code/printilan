import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/entities/store_entity.dart';
import 'package:sky_printing_domain/repositories/store_repository.dart';

part 'get_store_by_city_usecase.freezed.dart';
part 'get_store_by_city_usecase.g.dart';

class GetStoreByCityUsecase extends UseCase<List<StoreEntity>, GetStoreByCityParams> {
  final StoreRepository _repo;

  GetStoreByCityUsecase(this._repo);

  @override
  Future<Either<Failure, List<StoreEntity>>> call(GetStoreByCityParams params) =>
      _repo.getStoreByCity(params);
}

@freezed
class GetStoreByCityParams with _$GetStoreByCityParams {
  const factory GetStoreByCityParams({
    @Default(null) String? city,
  }) = _GetStoreByCityParams;

  factory GetStoreByCityParams.fromJson(Map<String, dynamic> json) =>
      _$GetStoreByCityParamsFromJson(json);
}
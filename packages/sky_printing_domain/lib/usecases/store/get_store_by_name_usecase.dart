import "package:dartz/dartz.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:sky_printing_core/sky_printing_core.dart";
import "package:sky_printing_domain/sky_printing_domain.dart";

part "get_store_by_name_usecase.freezed.dart";
part "get_store_by_name_usecase.g.dart";

class GetStoreByName extends UseCase<StoreEntity, GetStoreByNameParams> {
  final StoreRepository _repo;

  GetStoreByName(this._repo);

  @override
  Future<Either<Failure, StoreEntity>> call(GetStoreByNameParams params) =>
      _repo.getStoreByName(params);
}

@freezed
class GetStoreByNameParams with _$GetStoreByNameParams {
  const factory GetStoreByNameParams({
    @Default(null) String? name,
  }) = _GetStoreByNameParams;

  factory GetStoreByNameParams.fromJson(Map<String, dynamic> json) =>
      _$GetStoreByNameParamsFromJson(json);
}

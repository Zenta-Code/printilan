import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_store_by_id_usecase.freezed.dart';
part 'get_store_by_id_usecase.g.dart';

class GetStoreById extends UseCase<StoreEntity, GetStoreByIdParams> {
  final StoreRepository _repo;

  GetStoreById(this._repo);

  @override
  Future<Either<Failure, StoreEntity>> call(GetStoreByIdParams params) =>
      _repo.getStoreById(params);
}

@freezed
class GetStoreByIdParams with _$GetStoreByIdParams {
  const factory GetStoreByIdParams({
    @Default(null) String? id,
  }) = _GetStoreByIdParams;

  factory GetStoreByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetStoreByIdParamsFromJson(json);
}

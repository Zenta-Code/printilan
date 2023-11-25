import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_bundle_by_store_usecase.freezed.dart';
part 'get_bundle_by_store_usecase.g.dart';

class GetBundleByStore
    extends UseCase<List<BundleEntity>, GetBundleByStoreParams> {
  final BundleRepository _repo;

  GetBundleByStore(this._repo);

  @override
  Future<Either<Failure, List<BundleEntity>>> call(
          GetBundleByStoreParams params) =>
      _repo.getBundleByStore(params);
}

@freezed
class GetBundleByStoreParams with _$GetBundleByStoreParams {
  const factory GetBundleByStoreParams({
    @Default(null) String? storeId,
  }) = _GetBundleByStoreParams;

  factory GetBundleByStoreParams.fromJson(Map<String, dynamic> json) =>
      _$GetBundleByStoreParamsFromJson(json);
}

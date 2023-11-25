import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_bundle_by_id_usecase.freezed.dart';
part 'get_bundle_by_id_usecase.g.dart';

class GetBundleById extends UseCase<BundleEntity, GetBundleByIdParams> {
  final BundleRepository _repo;

  GetBundleById(this._repo);

  @override
  Future<Either<Failure, BundleEntity>> call(GetBundleByIdParams params) =>
      _repo.getBundleById(params);
}

@freezed
class GetBundleByIdParams with _$GetBundleByIdParams {
  const factory GetBundleByIdParams({
    @Default(null) String? id,
  }) = _GetBundleByIdParams;

  factory GetBundleByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetBundleByIdParamsFromJson(json);
}

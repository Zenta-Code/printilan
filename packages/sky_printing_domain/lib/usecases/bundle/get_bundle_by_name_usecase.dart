import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'get_bundle_by_name_usecase.freezed.dart';
part 'get_bundle_by_name_usecase.g.dart';

class GetBundleByNameUsecase
    extends UseCase<List<BundleEntity>, GetBundleByNameParams> {
  final BundleRepository _repo;

  GetBundleByNameUsecase(this._repo);

  @override
  Future<Either<Failure, List<BundleEntity>>> call(
          GetBundleByNameParams params) =>
      _repo.getBundleByName(params);
}

@freezed
class GetBundleByNameParams with _$GetBundleByNameParams {
  const factory GetBundleByNameParams({
    @Default(null) String? name,
  }) = _GetBundleByNameParams;

  factory GetBundleByNameParams.fromJson(Map<String, dynamic> json) =>
      _$GetBundleByNameParamsFromJson(json);
}

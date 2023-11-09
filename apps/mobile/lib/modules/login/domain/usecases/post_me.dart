import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/login/domain/repos/login_repository.dart';

part 'post_me.freezed.dart';
part 'post_me.g.dart';

class PostMe extends UseCase<bool, MeParams> {
  final LoginRepository _repo;

  PostMe(this._repo);

  @override
  Future<Either<Failure, bool>> call(MeParams params) => _repo.me(params.token);
}

@freezed
class MeParams with _$MeParams {
  const factory MeParams({
    @Default("") String token,
  }) = _MeParams;

  factory MeParams.fromJson(Map<String, dynamic> json) =>
      _$MeParamsFromJson(json);
}

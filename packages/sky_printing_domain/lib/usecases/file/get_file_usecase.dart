import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/file/file_entity.dart';
import 'package:sky_printing_domain/repositories/file_repository.dart';

part 'get_file_usecase.freezed.dart';
part 'get_file_usecase.g.dart';

class GetFileUseCase extends UseCase<FileEntity, GetFileParams> {
  final FileRepository _repo;

  GetFileUseCase(this._repo);

  @override
  Future<Either<Failure, FileEntity>> call(GetFileParams params) =>
      _repo.pickFile(params);
}

@freezed
class GetFileParams with _$GetFileParams {
  const factory GetFileParams({
    @Default([]) List<String> allowedExtensions,
  }) = _GetFileParams;

  factory GetFileParams.fromJson(Map<String, dynamic> json) =>
      _$GetFileParamsFromJson(json);
}

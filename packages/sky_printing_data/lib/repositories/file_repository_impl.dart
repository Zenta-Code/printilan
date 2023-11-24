import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_data/sources/local/file_local_data_sources.dart';
import 'package:sky_printing_domain/entities/file_entity.dart';
import 'package:sky_printing_domain/repositories/file_repository.dart';
import 'package:sky_printing_domain/usecases/file/get_file_usecase.dart';

class FileRepositoryImpl implements FileRepository {
  final FileLocalDatasource fileClient;
  FileRepositoryImpl(this.fileClient);

  @override
  Future<Either<Failure, FileEntity>> pickFile(
    GetFileParams params,
  ) async {
    final response = await fileClient.pickFile(
      params
    );
    return response.fold(
      (failure) => Left(failure),
      (fileResponse) => Right(
        fileResponse.toEntity(),
      ),
    );
  }
}

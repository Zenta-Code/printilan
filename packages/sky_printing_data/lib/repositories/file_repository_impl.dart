import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_data/sources/local/file_local_data_sources.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:sky_printing_domain/usecases/file/get_file_usecase.dart';

class FileRepositoryImpl implements FileRepository {
  final FileLocalDatasource _localDataSource;
  FileRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, FileEntity>> pickFile(
    GetFileParams params,
  ) async {
    final response = await _localDataSource.pickFile(params);
    return response.fold(
      (failure) => Left(failure),
      (fileResponse) => Right(
        fileResponse.toEntity(),
      ),
    );
  }
}

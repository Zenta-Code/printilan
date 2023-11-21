import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/services/local/file/file_client.dart';
import 'package:sky_printing_data/models/file/file_model.dart';
import 'package:sky_printing_domain/usecases/file/get_file_usecase.dart';

abstract class FileLocalDatasource {
  Future<Either<Failure, FileModel>> pickFile(
    GetFileParams params,
  );
}

class FileLocalDatasourceImpl implements FileLocalDatasource {
  final FileClient _client;

  FileLocalDatasourceImpl(this._client);

  @override
  Future<Either<Failure, FileModel>> pickFile(
    GetFileParams params,
  ) async {
    final response = await _client.pickFile(
      allowedExtensions: params.allowedExtensions,
    );
    return response;
  }
}

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/entities/file/file_entity.dart';
import 'package:sky_printing_domain/usecases/file/get_file_usecase.dart';

abstract class FileRepository {
  Future<Either<Failure, FileEntity>> pickFile(
    GetFileParams params,
  );
}

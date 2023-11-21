import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:sky_printing_core/error/error.dart';
import 'package:sky_printing_data/models/file/file_model.dart';

class FileClient {
  bool _isUnitTest = false;
  late FilePicker _filePicker;

  FileClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;
    _filePicker = _createFilePicker();
  }

  FilePicker get filePicker {
    if (_isUnitTest) {
      return _filePicker;
    } else {
      return _createFilePicker();
    }
  }

  FilePicker _createFilePicker() => FilePicker.platform;

  Future<Either<Failure, FileModel>> pickFile(
      {List<String> allowedExtensions = const [
        'pdf',
        'doc',
        'docx',
        'jpg',
        'png'
      ]}) async {
    try {
      final file = await filePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions,
        withData: true,
      );
      return Right(FileModel(result: file));
    } catch (e) {
      return Left(
        LocalFailure(
          message: e.toString(),
        ),
      );
    }
  }
}

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart'; 
part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    FilePickerResult? result,
  }) = _FileModel;

  const FileModel._();

  FileEntity toEntity() => FileEntity(
        result: result,
      );
}

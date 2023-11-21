import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_entity.freezed.dart';

@freezed
class FileEntity with _$FileEntity {
  const factory FileEntity({
  FilePickerResult? result,
  }) = _FileEntity;

}
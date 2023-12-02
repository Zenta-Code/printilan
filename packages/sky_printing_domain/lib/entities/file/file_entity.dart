import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'file_entity.freezed.dart';
part 'file_entity.g.dart';

@freezed
class FileEntity with _$FileEntity {
  @HiveType(typeId: 3, adapterName: 'FileEntityAdapter')
  const factory FileEntity({
    @HiveField(0) FilePickerResult? result,
  }) = _FileEntity;
}

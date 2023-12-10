import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'document_entity.freezed.dart';
part 'document_entity.g.dart';

@freezed
class DocumentEntity with _$DocumentEntity {
  @HiveType(typeId: 3, adapterName: 'DocumentEntityAdapter')
  const factory DocumentEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? fileName,
    @HiveField(2) String? filePath,
    @HiveField(3) String? type,
    @HiveField(4) int? totalPage,
    @HiveField(5) String? size,
    @HiveField(6) bool? color,
    @HiveField(7) int? copies,
  }) = _DocumentEntity;
}

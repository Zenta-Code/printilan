import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'document_entity.freezed.dart';
part 'document_entity.g.dart';

@freezed
class DocumentEntity with _$DocumentEntity {
  @HiveType(typeId: 3, adapterName: 'DocumentEntityAdapter')
  const factory DocumentEntity({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) String? type,
    @HiveField(3) int? count,
    @HiveField(4) String? size,
    @HiveField(5) bool? color,
    @HiveField(6) int? price,
    @HiveField(7) int? copies,
  }) = _DocumentEntity;
}

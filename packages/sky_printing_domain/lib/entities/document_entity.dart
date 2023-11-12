import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_entity.freezed.dart';

@freezed
class DocumentEntity with _$DocumentEntity {
  const factory DocumentEntity({
    String? name,
    String? type,
    int? count,
    String? size,
    bool? color,
    int? price,
    int? copies,
  }) = _DocumentEntity;

}

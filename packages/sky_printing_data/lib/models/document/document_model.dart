import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
    String? name,
    String? type,
    int? count,
    String? size,
    bool? color,
    int? price,
    int? copies,
  }) = _DocumentModel;

  const DocumentModel._();

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);

  DocumentEntity toEntity() => DocumentEntity(
        name: name,
        type: type,
        count: count,
        size: size,
        color: color,
        price: price,
        copies: copies,
      );
}

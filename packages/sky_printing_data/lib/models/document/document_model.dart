import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  const factory DocumentModel({
  @JsonKey(name: '_id') String? id,
    String? fileName,
    String? filePath,
    String? type,
    int? totalPage,
    String? size,
    bool? color,
    int? copies, 
  }) = _DocumentModel;

  const DocumentModel._();

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);

  DocumentEntity toEntity() => DocumentEntity(
        id: id,
        fileName: fileName,
        filePath: filePath,
        type: type,
        totalPage: totalPage,
        size: size,
        color: color,
        copies: copies,
      );
}

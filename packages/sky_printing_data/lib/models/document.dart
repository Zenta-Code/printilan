import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    String? name,
    String? type,
    int? count,
    String? size,
    bool? color,
    int? price,
    int? copies,
  }) = _Document;

  const Document._();

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  Document toEntity() => Document(
      name: name,
      type: type,
      count: count,
      size: size,
      color: color,
      price: price,
      copies: copies);
}

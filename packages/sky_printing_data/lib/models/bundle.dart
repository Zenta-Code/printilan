import 'package:freezed_annotation/freezed_annotation.dart';

part 'bundle.freezed.dart';
part 'bundle.g.dart';

@freezed
class Bundle with _$Bundle {
  const factory Bundle({
    String? storeId,
    String? name,
    String? desc,
    List? prices,
  }) = _Bundle;

  const Bundle._();

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);

  Bundle toEntity() =>
      Bundle(storeId: storeId, name: name, desc: desc, prices: prices);
}

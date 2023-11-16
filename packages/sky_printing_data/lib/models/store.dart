import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/address.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
    @JsonKey(name: '_id') String? id,
    String? name,
    Address? address,
    String? phone,
    String? ownerId,
  }) = _Store;

  const Store._();

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Store toEntity() => Store(
        id: id,
        name: name,
        address: address,
        phone: phone,
        ownerId: ownerId,
      );
}

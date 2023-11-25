import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_entity.freezed.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    String? userId,
    String? storeId,
    String? documentId,
    UserEntity? user,
    StoreEntity? store,
    DocumentEntity? document,
    int? totalPrice,
  }) = _OrderEntity;
}

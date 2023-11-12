import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    String? userId,
    String? storeId,
    String? documentId,
    int? totalPrice,
  }) = _OrderEntity;

}

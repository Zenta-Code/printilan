import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    String? userId,
    String? storeId,
    String? documentId,
    int? totalPrice,
  }) = _Order;

  const Order._();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Order toEntity() => Order(
      userId: userId,
      storeId: storeId,
      documentId: documentId,
      totalPrice: totalPrice);
}

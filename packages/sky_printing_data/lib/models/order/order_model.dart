import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/models.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    String? userId,
    String? storeId,
    String? documentId,
    UserModel? user,
    StoreModel? store,
    DocumentModel? document,
    int? totalPrice,
  }) = _OrderModel;

  const OrderModel._();

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  OrderEntity toEntity() => OrderEntity(
        userId: userId,
        storeId: storeId,
        documentId: documentId,
        totalPrice: totalPrice,
        user: user?.toEntity(),
        store: store?.toEntity(),
        document: document?.toEntity(),
      );
}

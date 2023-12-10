import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_data/models/models.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';
part 'order_model_response.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: '_id') String? id,
    String? userId,
    String? storeId,
    String? documentId,
    String? bundleId,
    bool? isColor,
    String? status,
    int? totalPrice,
    String? createdAt,
    String? updatedAt,
  }) = _OrderModel;

  const OrderModel._();

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  OrderEntity toEntity() => OrderEntity(
        id: id,
        userId: userId,
        storeId: storeId,
        documentId: documentId,
        bundleId: bundleId,
        isColor: isColor,
        status: status,
        totalPrice: totalPrice,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

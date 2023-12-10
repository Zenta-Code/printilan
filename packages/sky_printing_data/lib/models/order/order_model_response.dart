part of 'order_model.dart';

@freezed
class OrderModelResponse with _$OrderModelResponse {
  const factory OrderModelResponse({
    String? userId,
    String? storeId,
    String? documentId,
    OrderModel? order,
    UserModel? user,
    StoreModel? store,
    DocumentModel? document, 
    BundleModel? bundle,
  }) = _OrderModelResponse;

  const OrderModelResponse._();

  factory OrderModelResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderModelResponseFromJson(json);

  OrderEntityResponse toEntity() => OrderEntityResponse(
        userId: userId,
        storeId: storeId,
        documentId: documentId,
        order: order?.toEntity(),
        user: user?.toEntity(),
        store: store?.toEntity(),
        document: document?.toEntity(), 
        bundle: bundle?.toEntity(),
      );
}

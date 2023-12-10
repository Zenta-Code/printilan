part of 'order_entity.dart';

@freezed 
class OrderEntityResponse with _$OrderEntityResponse{
  @HiveType( typeId: 1, adapterName: 'OrderEntityResponseAdapter')
  const factory OrderEntityResponse({
    @HiveField(0) String? userId,
    @HiveField(1) String? storeId,
    @HiveField(2) String? documentId,
    @HiveField(3) OrderEntity? order,
    @HiveField(4) UserEntity? user,
    @HiveField(5) StoreEntity? store,
    @HiveField(6) DocumentEntity? document,
    @HiveField(7) int? totalPrice,
    @HiveField(8) BundleEntity? bundle,
  }) = _OrderEntityResponse;
}
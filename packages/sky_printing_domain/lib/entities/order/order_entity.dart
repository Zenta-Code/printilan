import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  @HiveType(typeId: 2, adapterName: 'OrderEntityAdapter')
  const factory OrderEntity({
    @HiveField(0) @JsonKey(name: '_id') String? id,
    @HiveField(1) String? userId,
    @HiveField(2) String? storeId,
    @HiveField(3) String? documentId,
    @HiveField(4) UserEntity? user,
    @HiveField(5) StoreEntity? store,
    @HiveField(6) DocumentEntity? document,
    int? totalPrice,
  }) = _OrderEntity;
}

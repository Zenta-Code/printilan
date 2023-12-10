import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/models.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class OrderRemoteDataSource {
  Future<Either<Failure, OrderModel>> getOrderById(
    GetOrderByIdParams params,
  );
  Future<Either<Failure, List<OrderModelResponse>>> getOrderByStore(
    GetOrderByStoreParams params,
  );
  Future<Either<Failure, List<OrderModelResponse>>> getOrderByUser(
    GetOrderByUserParams params,
  );
  Future<Either<Failure, OrderModel>> postOrder(
    PostOrderParams params,
  );
  Future<Either<Failure, OrderModel>> deleteOrderById(
    DeleteOrderByIdParams params,
  );

  Future<Either<Failure, File>> createReportOrder(
    CreateReportOrderParams params,
  );
}

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final DioClient _client;

  OrderRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, OrderModel>> getOrderById(
    GetOrderByIdParams params,
  ) {
    final response = _client.getRequest(
      ListAPI.order,
      queryParameters: params.toJson(),
      converter: (response) => OrderModel.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, List<OrderModelResponse>>> getOrderByStore(
    GetOrderByStoreParams params,
  ) {
    final response = _client.getRequest(
      ListAPI.order,
      queryParameters: params.toJson(),
      converter: (response) {
        final List<OrderModelResponse> orders = response['data']
            .map<OrderModelResponse>(
                (order) => OrderModelResponse.fromJson(order))
            .toList();
        return orders;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, List<OrderModelResponse>>> getOrderByUser(
    GetOrderByUserParams params,
  ) {
    final response = _client.getRequest(
      ListAPI.order,
      queryParameters: params.toJson(),
      converter: (response) {
        final List<OrderModelResponse> orders = response['data']
            .map<OrderModelResponse>(
                (order) => OrderModelResponse.fromJson(order))
            .toList();
        return orders;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, OrderModel>> postOrder(
    PostOrderParams params,
  ) {
    final response = _client.postRequest(
      ListAPI.order,
      data: params.toJson(),
      converter: (response) => OrderModel.fromJson(response['data']),
    );
    return response;
  }

  @override
  Future<Either<Failure, OrderModel>> deleteOrderById(
    DeleteOrderByIdParams params,
  ) {
    final response = _client.deleteRequest(
      "${ListAPI.order}/${params.orderId}",
      converter: (response) => OrderModel.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, File>> createReportOrder(
    CreateReportOrderParams params,
  ) {
    final response = _client.downloadRequest(
      ListAPI.order + "/report",
      params.savePath!,
      queryParameters: params.toJson(),
    );
    return response;
  }
}

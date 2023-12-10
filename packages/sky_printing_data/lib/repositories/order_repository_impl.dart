import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource _remoteDataSource;

  const OrderRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, OrderEntity>> deleteOrderById(
      DeleteOrderByIdParams params) async {
    final res = await _remoteDataSource.deleteOrderById(params);
    return res.fold(
      (failure) => Left(failure),
      (order) => Right(
        order.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> getOrderById(
      GetOrderByIdParams params) async {
    final res = await _remoteDataSource.getOrderById(params);
    return res.fold(
      (failure) => Left(failure),
      (order) => Right(
        order.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<OrderEntityResponse>>> getOrderByStore(
      GetOrderByStoreParams params) async {
    final res = await _remoteDataSource.getOrderByStore(params);
    return res.fold(
      (failure) => Left(failure),
      (order) => Right(
        order
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<OrderEntity>>> getOrderByUser(
      GetOrderByUserParams params) async {
    final res = await _remoteDataSource.getOrderByUser(params);
    return res.fold(
      (failure) => Left(failure),
      (order) => Right(
        order
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> postOrder(PostOrderParams params) async {
    final res = await _remoteDataSource.postOrder(params);
    return res.fold(
      (failure) => Left(failure),
      (order) => Right(
        order.toEntity(),
      ),
    );
  }

  @override
  Future<Either<Failure, File>> createReportOrder(
      CreateReportOrderParams params) async {
    final res = await _remoteDataSource.createReportOrder(params);
    return res.fold((failure) {
      // log.f(failure);
      return Left(failure);
    }, (file) {
      // log.f(file);
      return Right(
        file,
      );
    });
  }
}

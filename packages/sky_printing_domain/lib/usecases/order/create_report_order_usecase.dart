import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class CreateReportOrderUsecase extends UseCase<File, CreateReportOrderParams> {
  final OrderRepository _repo;

  CreateReportOrderUsecase(this._repo);

  @override
  Future<Either<Failure, File>> call(CreateReportOrderParams params) =>
      _repo.createReportOrder(params);
}
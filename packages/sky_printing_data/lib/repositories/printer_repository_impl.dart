import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class PrinterRepositoryImpl implements PrinterRepository {
  final PrinterRemoteDataSource _remoteDataSource;

  PrinterRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, PrinterEntity>> getPrinterById(
    GetPrinterByIdParams params,
  ) async {
    final res = await _remoteDataSource.getPrinterById(params);

    return res.fold(
      (failure) => Left(failure),
      (printerResponse) {
        return Right(printerResponse.toEntity());
      },
    );
  }

  @override
  Future<Either<Failure, List<PrinterEntity>>> getPrinterByStore(
    GetPrinterByStoreParams params,
  ) async {
    final res = await _remoteDataSource.getPrinterByStore(params);
    return res.fold(
      (failure) => Left(failure),
      (printerResponse) {
        final List<PrinterEntity> printers = printerResponse
            .map<PrinterEntity>((printer) => printer.toEntity())
            .toList();
        return Right(printers);
      },
    );
  }

  @override
  Future<Either<Failure, List<PrinterEntity>>> postPrinterSyncBulk(
    PostPrinterSyncBulkParams params,
  ) async {
    final res = await _remoteDataSource.postPrinterSyncBulk(params);
    return res.fold(
      (failure) => Left(failure),
      (printerResponse) {
        final List<PrinterEntity> printers = printerResponse
            .map<PrinterEntity>((printer) => printer.toEntity())
            .toList();
        return Right(printers);
      },
    );
  }

  @override
  Future<Either<Failure, PrinterEntity>> postPrinterSyncSingle(
    PostPrinterSyncSingleParams params,
  ) async {
    final res = await _remoteDataSource.postPrinterSyncSingle(params);
    return res.fold(
      (failure) => Left(failure),
      (printerResponse) {
        return Right(printerResponse.toEntity());
      },
    );
  }
}

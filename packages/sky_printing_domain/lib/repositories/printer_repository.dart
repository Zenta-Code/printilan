import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class PrinterRepository {
  Future<Either<Failure, List<PrinterEntity>>> postPrinterSyncBulk(
    PostPrinterSyncBulkParams params,
  );
  Future<Either<Failure, PrinterEntity>> postPrinterSyncSingle(
    PostPrinterSyncSingleParams params,
  );
  Future<Either<Failure, PrinterEntity>> getPrinterById(
    GetPrinterByIdParams params,
  );
  Future<Either<Failure, List<PrinterEntity>>> getPrinterByStore(
    GetPrinterByStoreParams params,
  );
}

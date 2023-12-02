import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class PostPrinterSyncSingleUsecase
    extends UseCase<PrinterEntity, PostPrinterSyncSingleParams> {
  final PrinterRepository _repo;

  PostPrinterSyncSingleUsecase(this._repo);

  @override
  Future<Either<Failure, PrinterEntity>> call(
          PostPrinterSyncSingleParams params) =>
      _repo.postPrinterSyncSingle(params);
}

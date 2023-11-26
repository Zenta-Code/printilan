import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class PrinterRemoteDataSource {
  Future<Either<Failure, PrinterModel>> getPrinterById(
    GetPrinterByIdParams params,
  );
  Future<Either<Failure, List<PrinterModel>>> getPrinterByStore(
    GetPrinterByStoreParams params,
  );
  Future<Either<Failure, List<PrinterModel>>> postPrinterSyncBulk(
    PostPrinterSyncBulkParams params,
  );
  Future<Either<Failure, PrinterModel>> postPrinterSyncSingle(
    PostPrinterSyncSingleParams params,
  );
}

class PrinterRemoteDataSourceImpl implements PrinterRemoteDataSource {
  final DioClient _client;

  PrinterRemoteDataSourceImpl(this._client);
  @override
  Future<Either<Failure, PrinterModel>> getPrinterById(
    GetPrinterByIdParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.printer,
      queryParameters: params.toJson(),
      converter: (response) => PrinterModel.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, List<PrinterModel>>> getPrinterByStore(
    GetPrinterByStoreParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.printer,
      queryParameters: params.toJson(),
      converter: (response) {
        final List<PrinterModel> printers = response['data']
            .map<PrinterModel>((printer) => PrinterModel.fromJson(printer))
            .toList();
        return printers;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, List<PrinterModel>>> postPrinterSyncBulk(
    PostPrinterSyncBulkParams params,
  ) async {
    final response = await _client.postRequest(
      ListAPI.printer,
      data: params.toJson(),
      converter: (response) {
        final List<PrinterModel> printers = response['data']
            .map<PrinterModel>((printer) => PrinterModel.fromJson(printer))
            .toList();
        return printers;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, PrinterModel>> postPrinterSyncSingle(
    PostPrinterSyncSingleParams params,
  ) async {
    final response = await _client.postRequest(
      ListAPI.printer,
      data: params.toJson(),
      converter: (response) => PrinterModel.fromJson(response),
    );
    return response;
  }
}

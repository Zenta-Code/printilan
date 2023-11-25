import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/models/bundle/bundle_model.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class BundleRemoteDataSource {
  Future<Either<Failure, List<BundleModel>>> getBundleByStore(
    GetBundleByStoreParams params,
  );

  Future<Either<Failure, List<BundleModel>>> getBundleByName(
    GetBundleByNameParams params,
  );

  Future<Either<Failure, BundleModel>> getBundleById(
    GetBundleByIdParams params,
  );
}

class BundleRemoteDataSourceImpl implements BundleRemoteDataSource {
  final DioClient _client;

  BundleRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, BundleModel>> getBundleById(
    GetBundleByIdParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.bundle,
      queryParameters: params.toJson(),
      converter: (response) => BundleModel.fromJson(response['data']),
    );
    return response;
  }

  @override
  Future<Either<Failure, List<BundleModel>>> getBundleByName(
    GetBundleByNameParams params,
  ) async {
    final response = await _client.getRequest(
      "${ListAPI.bundle}}",
      queryParameters: params.toJson(),
      converter: (response) {
        final List<BundleModel> bundles = response['data']
            .map<BundleModel>((bundle) => BundleModel.fromJson(bundle))
            .toList();
        return bundles;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, List<BundleModel>>> getBundleByStore(
    GetBundleByStoreParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.bundle,
      queryParameters: params.toJson(),
      converter: (response) {
        final List<BundleModel> bundles = response['data']
            .map<BundleModel>((bundle) => BundleModel.fromJson(bundle))
            .toList();
        return bundles;
      },
    );
    return response;
  }
}

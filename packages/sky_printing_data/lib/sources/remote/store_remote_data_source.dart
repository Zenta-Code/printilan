import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class StoreRemoteDataSource {
  Future<Either<Failure, StoreModel>> getStoreById(
    GetStoreByIdParams params,
  );
  Future<Either<Failure, StoreModel>> getStoreByName(
    GetStoreByNameParams params,
  );
  Future<Either<Failure, List<StoreModel>>> getStoreByCity(
    GetStoreByCityParams params,
  );
  Future<Either<Failure, List<StoreModel>>> getStoreAll(
    NoParams params,
  );
}

class StoreRemoteDataSourceImpl implements StoreRemoteDataSource {
  final DioClient _client;

  StoreRemoteDataSourceImpl(this._client);

  @override
  Future<Either<Failure, List<StoreModel>>> getStoreAll(
    NoParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.store,
      converter: (response) {
        final List<StoreModel> stores = response
            .map<StoreModel>((store) => StoreModel.fromJson(store))
            .toList();
        return stores;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, List<StoreModel>>> getStoreByCity(
    GetStoreByCityParams params,
  ) async {
    final response = await _client.getRequest(
      "${ListAPI.store}/${params.city}",
      queryParameters: params.toJson(),
      converter: (response) {
        final List<StoreModel> stores = response
            .map<StoreModel>((store) => StoreModel.fromJson(store))
            .toList();
        return stores;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, StoreModel>> getStoreById(
    GetStoreByIdParams params,
  ) async {
    final response = await _client.getRequest(
      "${ListAPI.store}/${params.id}",
      queryParameters: params.toJson(),
      converter: (response) => StoreModel.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, StoreModel>> getStoreByName(
    GetStoreByNameParams params,
  ) async {
    final response = await _client.getRequest(
      "${ListAPI.store}/${params.name}",
      queryParameters: params.toJson(),
      converter: (response) => StoreModel.fromJson(response),
    );
    return response;
  }
}

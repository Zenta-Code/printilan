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
  Future<Either<Failure, Tuple2<List<StoreModel>, List<BundleModel>>>>
      getStoreByCity(
    GetStoreByCityParams params,
  );
  Future<Either<Failure, List<StoreModel>>> getStoreAll(
    NoParams params,
  );
  Future<Either<Failure, StoreModel>> postStore(
    StoreRegisterParams params,
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
        final List<StoreModel> stores =
            response['data'].map<StoreModel>((store) {
          return StoreModel.fromJson(store);
        }).toList();
        return stores;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, Tuple2<List<StoreModel>, List<BundleModel>>>>
      getStoreByCity(
    GetStoreByCityParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.store,
      queryParameters: params.toJson(),
      converter: (response) {
        final List<StoreModel> stores =
            response['data'].map<StoreModel>((store) {
          return StoreModel.fromJson(store);
        }).toList();
        final List<BundleModel> bundles =
            response['bundle'].map<BundleModel>((bundle) {
          return BundleModel.fromJson(bundle);
        }).toList();

        return Tuple2(stores, bundles);
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, StoreModel>> getStoreById(
    GetStoreByIdParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.store,
      queryParameters: params.toJson(),
      converter: (response) {
        final StoreModel store = response['data']
            .map<StoreModel>((store) {
              return StoreModel.fromJson(store);
            })
            .toList()
            .first;
        return store;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, StoreModel>> getStoreByName(
    GetStoreByNameParams params,
  ) async {
    final response = await _client.getRequest(
      ListAPI.store,
      queryParameters: params.toJson(),
      converter: (response) {
        final StoreModel store = response['data'].map<StoreModel>((store) {
          return StoreModel.fromJson(store);
        }).toList();
        return store;
      },
    );
    return response;
  }

  @override
  Future<Either<Failure, StoreModel>> postStore(
    StoreRegisterParams params,
  ) async {
    final response = await _client.postRequest(
      "${ListAPI.store}/sign-up",
      data: params.toJson(),
      converter: (response) {
        final StoreModel store = StoreModel.fromJson(response['store']);
        return store;
      },
    );
    return response;
  }
}

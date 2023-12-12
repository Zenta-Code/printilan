import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> with MainBoxMixin {
  final GetLocation _getLocation;
  final GetStoreByCityUsecase _getStoreByCityUsecase;
  final GetOrderByUserUsecase _getOrderByUserUsecase;

  HomeCubit(
    this._getLocation,
    this._getStoreByCityUsecase,
    this._getOrderByUserUsecase,
  ) : super(const _Loading());

  LocationEntity? location;

  searchAndNavigate() async {}

  Future<void> getLocation(LocationParams params) async {
    safeEmit(const _Loading(), emit: emit, isClosed: isClosed);
    final data = await _getLocation.call(params);

    data.fold(
      (l) {
        if (l is LocationFailure) {
          emit(_Failure(l.message ?? ""));
        }
        if (l is PermissionFailure) {
          emit(_Failure(l.message ?? ""));
        }
      },
      (success) async {
        location = success;
        final store = await getStoreByCity(
          _getRegency(success.placemarks!.first.subAdministrativeArea!),
        );
        final order = await getLastOrder();

        safeEmit(
          _Success(success, store.value1, store.value2, order),
          emit: emit,
          isClosed: isClosed,
        );
      },
    );
  }

  String _getRegency(String subAdministrativeArea) {
    String regency;
    if (subAdministrativeArea.split(" ").length > 1) {
      regency = subAdministrativeArea.split(" ")[1];
    } else {
      regency = subAdministrativeArea;
    }
    return regency;
  }

  Future<Tuple2<List<StoreEntity>, List<BundleEntity>>> getStoreByCity(
      String city) async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final data = await _getStoreByCityUsecase.call(
      GetStoreByCityParams(city: city),
    );
    Tuple2<List<StoreEntity>, List<BundleEntity>> store = const Tuple2([], []);
    data.fold(
      (l) {
        if (l is ServerFailure) {}
      },
      (r) {
        store = r;
      },
    );
    return store;
  }

  Future<List<OrderEntityResponse>> getLastOrder() async {
    final res = await _getOrderByUserUsecase.call(GetOrderByUserParams(
      userId: getData<UserEntity>(MainBoxKeys.user).id,
      limit: 1,
    ));
    return res.fold((l) => [], (r) => r);
  }
}

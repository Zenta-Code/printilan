import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetLocation _getLocation;
  final GetStoreByCityUsecase _getStoreByCityUsecase;
  HomeCubit(
    this._getLocation,
    this._getStoreByCityUsecase,
  ) : super(const _Loading());

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(-7.4241966, 112.426744),
  );
  Marker? marker;
  LocationEntity? location;
  IO.Socket? socket;

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
        String regency;
        if (success.placemarks!.first.subAdministrativeArea!.split(" ").length >
            1) {
          regency =
              success.placemarks!.first.subAdministrativeArea!.split(" ")[1];
        } else {
          regency = success.placemarks!.first.subAdministrativeArea!;
        }
        final store = await getStoreByCity(
          regency,
        );
        kGooglePlex = CameraPosition(
          target: LatLng(
            success.latitude!,
            success.longitude!,
          ),
          zoom: 14.4746,
        );
        marker = Marker(
          markerId: const MarkerId("1"),
          position: LatLng(
            success.latitude!,
            success.longitude!,
          ),
        );

        safeEmit(
          _Success(success, store.value1, store.value2),
          emit: emit,
          isClosed: isClosed,
        );
      },
    );
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

  void _onMapCreated(GoogleMapController controller) {
    this.controller.complete(controller);
  }
}

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sky_printing/core/error/failure.dart';
import 'package:sky_printing/modules/dashboard/domain/entities/location.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/connect_socket.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/join_socket.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/receive_socket.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/send_socket.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/sockets/socket_params.dart';
import 'package:sky_printing/utils/utils.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetLocation _getLocation;
  final ReceiveSocket _receiveSocket;
  final SendSocket _sendSocket;
  final ConnectSocket _connectSocket;
  final JoinSocket _joinSocket;
  DashboardCubit(
    this._getLocation,
    this._receiveSocket,
    this._sendSocket,
    this._connectSocket,
    this._joinSocket,
  ) : super(const _Loading());

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(-7.4241966, 112.426744),
  );
  Marker? marker;
  Location? location;
  IO.Socket? socket;

  Future<void> getLocation(LocationParams params) async {
    log.i("Someone call me");
    emit(const _Loading());
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
      (r) {
        location = r;
        kGooglePlex = CameraPosition(
          target: LatLng(
            r.latitude!,
            r.longitude!,
          ),
          zoom: 14.4746,
        );
        marker = Marker(
          markerId: const MarkerId("1"),
          position: LatLng(
            r.latitude!,
            r.longitude!,
          ),
        );

        emit(_Success(r));
      },
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    this.controller.complete(controller);
  }

  void connectSocket() {
    _connectSocket.call(null);
  }

  void joinSocket(String room) {
    _joinSocket.call(room);
  }

  void sendSocket(String text) {
    _sendSocket.call(SocketParams(
      roomId: "1",
      receiver: "1",
      sender: "1",
      content: {"text": text},
    ));
  }
}

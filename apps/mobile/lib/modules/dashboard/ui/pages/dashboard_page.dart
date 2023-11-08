import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart' hide Location;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/dashboard/domain/entities/location.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';
import 'package:sky_printing/modules/dashboard/ui/cubit/dashboard_cubit.dart';
import 'package:sky_printing/utils/utils.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-7.4241966, 112.426744),
  );
  Marker? marker;
  Location? location;
  List<Placemark>? placemarks;
  late IO.Socket socket;
  final MainBoxMixin mainBoxMixin = MainBoxMixin();
  final String _baseUrl = const String.fromEnvironment('SERVER_URL');
  @override
  void initState() {
    super.initState();
    log.e(_baseUrl);
    log.i('initState ${mainBoxMixin.getData(MainBoxKeys.token)}');
    socket = IO.io(
      _baseUrl,
      IO.OptionBuilder()
          .setAuth({
            "token": mainBoxMixin.getData(MainBoxKeys.token),
          })
          .setTransports(['websocket'])
          .disableAutoConnect()
          .enableForceNew()
          .setPath('/socket')
          .build(),
    );
    log.i('STATUS\n${socket.connected}');
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: RefreshIndicator(
        color: Colors.red,
        backgroundColor: Theme.of(context).extension<LzyctColors>()!.background,
        onRefresh: () async {
          context.read<DashboardCubit>().getLocation(LocationParams());
        },
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(
                child: Loading(),
              ),
              empty: () => Center(
                child: Empty(),
              ),
              failure: (message) => Center(
                  child: Empty(
                errorMessage: message,
              )),
              success: (data) {
                location = data;
                _kGooglePlex = CameraPosition(
                  target: LatLng(
                    location!.latitude!,
                    location!.longitude!,
                  ),
                  zoom: 14.4746,
                );
                marker = Marker(
                  markerId: MarkerId("1"),
                  position: LatLng(
                    location!.latitude!,
                    location!.longitude!,
                  ),
                  infoWindow: InfoWindow(
                    title: "Your Location",
                  ),
                );
                _setPlacemark(location!.latitude!, location!.longitude!);
                return SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Container(
                                height: 300,
                                width: 300,
                                child: GoogleMap(
                                  mapType: MapType.normal,
                                  initialCameraPosition: _kGooglePlex,
                                  onMapCreated: _onMapCreated,
                                  markers: {marker!},
                                ),
                              ),
                              Text(
                                "Your Location",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                location?.latitude.toString() ?? "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                location?.longitude.toString() ?? "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                placemarks?.first.street.toString() ?? "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                placemarks?.first.subAdministrativeArea
                                        .toString() ??
                                    "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                placemarks?.first.administrativeArea
                                        .toString() ??
                                    "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                placemarks?.first.country.toString() ?? "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: Dimens.space12),
                              Text(
                                placemarks?.first.postalCode.toString() ?? "",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Container(
                            width: 300,
                            padding: EdgeInsets.all(Dimens.space16),
                            child: Column(
                              children: [
                                Text('TEST WEBSOCKET'),
                                SizedBox(height: Dimens.space12),
                                ElevatedButton(
                                  onPressed: () {
                                    makeOrder();
                                  },
                                  child: Text('Make Order'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    if (!_controller.isCompleted) {
      _controller.complete(controller);
    }
  }

  void _setPlacemark(double latitude, double longitude) async {
    placemarks = await placemarkFromCoordinates(latitude, longitude);
    setState(() {});
  }

  void connect() {
    print('connecting...');
    if (!socket.connected) {
      socket.connect();
    }
    socket.onConnect((_) {
      print("Connection established");
    });
    print('STATUS\n${socket.connected}');
  }

  void joinRoom() {
    const String room = 'room1';
    socket.emit('join', room);
  }

  Future<FilePickerResult?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc'],
      withData: true,
    );
    return result;
  }

  void makeOrder() async {
    connect();
    joinRoom();
    final file = await pickFile();
    if (file != null) {
      log.i(file.files.first.bytes);
      socket.emit('message', {
        'room': 'room1',
        'message': {
          'type': "print",
          'data': {
            'printer': "printer1",
            'file': file.files.first.bytes,
          },
        },
      });
    }
  }
}

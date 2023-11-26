import 'package:sky_printing_core/services/remote/api/list_api.dart';
import 'package:sky_printing_core/utils/utils.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:socket_io_client/socket_io_client.dart';

class SocketClient with MainBoxMixin, FirebaseCrashLogger {
  static const String _baseUrl = ListAPI.baseUrl;
  static const String _socketPath = ListAPI.socketPath;
  String? _auth;
  bool _isUnitTest = false;
  Socket? _socket;

  Socket get socket => _socket!;

  SocketClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;

    try {
      _auth = getData(MainBoxKeys.token);
    } catch (_) {}

    if (_auth != null || _socket == null) {
      _socket = _createSocket();
      connect();
    }
    if (!_isUnitTest) _socket!.connect();
  }

  Socket _createSocket() {
    log.i('SocketClient: $_baseUrl$_socketPath');
    log.i("TOKEN: $_auth");
    return io(
      _baseUrl,
      OptionBuilder()
          .setTransports(['websocket'])
          .setPath(_socketPath)
          .setAuth({'token': _auth})
          .build(),
    );
  }

  Socket disconnect() {
    return _socket!.disconnect();
  }

  Socket connect() {
    return _socket!.connect();
  }

  void join(String room) {
    _socket!.emit('join', room);
  }

  void message(dynamic Function(dynamic) handler) {
    _socket!.on('message', handler);
  }

  void send(SocketParams params) {
    _socket!.emit('message', params.toJson());
  }
}

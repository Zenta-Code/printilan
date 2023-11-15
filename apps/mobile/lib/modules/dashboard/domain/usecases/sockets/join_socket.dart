import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart'; 

class JoinSocket extends UseCase<void, String> {
  final SocketClient _client;

  JoinSocket(this._client);

  @override
  Future<Either<Failure, void>> call(String room) {
    _client.join(room);
    return Future.value(const Right(null));
  }
}

import 'dart:isolate';

import 'package:sky_printing/core/core.dart';

class IsolateParser<T> {
  final Map<String, dynamic> json;

  ResponseConverter<T> converter;

  IsolateParser(this.json, this.converter);

  Future<T> parseInBackground() async {
    final port = ReceivePort();
    await Isolate.spawn(_parseListOfJson, port.sendPort);

    final result = await port.first;
    return result as T;
  }

  Future<void> _parseListOfJson(SendPort sendPort) async {
    final result = converter(json);
    Isolate.exit(sendPort, result);
  }
}

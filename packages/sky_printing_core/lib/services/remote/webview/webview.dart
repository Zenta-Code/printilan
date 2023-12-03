import 'dart:typed_data';

import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClient with MainBoxMixin {
  bool _isUnitTest = false;
  late WebViewController _controller;

  WebViewController get controller => _controller;

  WebViewClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;

    try {} catch (_) {}

    _controller = createBase(onExample: () {
      log.e("INITIALIZE");
    });

    if (!_isUnitTest) _controller;
  }

  WebViewController get webViewController {
    if (_isUnitTest) {
      return _controller;
    } else {
      try {} catch (_) {}

      final controller = createBase(onExample: () {
        log.e("ON CALL");
      });

      if (!_isUnitTest) controller;

      return controller;
    }
  }

  WebViewController createBase(
          {required Function onExample, Function? onProgress}) =>
      WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              log.i(progress);
            },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('http://example.com/')) {
                onExample();
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        );

  Future<WebViewController> loadUrl(
    String url,
    Function onExample, {
    LoadRequestMethod method = LoadRequestMethod.get,
    Map<String, String> headers = const <String, String>{},
    Uint8List? body,
  }) async {
    final newCon = createBase(
      onExample: onExample,
    );
    newCon.loadRequest(
      Uri.parse(url),
      headers: headers,
      body: body,
      method: method,
    );
    return newCon;
  }
}

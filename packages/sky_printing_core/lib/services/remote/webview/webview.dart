import 'dart:typed_data';

import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClient with MainBoxMixin {
  bool _isUnitTest = false;
  late WebViewController _controller;

  WebViewController get controller => _controller;

  WebViewClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;

    try {
    } catch (_) {}

    _controller = createBase();

    if (!_isUnitTest) _controller;
  }

  WebViewController get webViewController {
    if (_isUnitTest) {
      return _controller;
    } else {
      try {
      } catch (_) {}

      final controller = createBase();

      if (!_isUnitTest) controller;

      return controller;
    }
  }

  WebViewController createBase() => WebViewController()
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
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );

  Future<WebViewController> loadUrl(
    String url, {
    LoadRequestMethod method = LoadRequestMethod.get,
    Map<String, String> headers = const <String, String>{},
    Uint8List? body,
  }) async {
    _controller.loadRequest(
      Uri.parse(url),
      headers: headers,
      body: body,
      method: method,
    );
    return _controller;
  }
}

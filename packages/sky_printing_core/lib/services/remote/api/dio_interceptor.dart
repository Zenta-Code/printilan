import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sky_printing_core/utils/utils.dart';

class DioInterceptor extends Interceptor with FirebaseCrashLogger {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String headerMessage = "";
    options.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    try {
      options.queryParameters.forEach(
        (k, v) => debugPrint(
          '► $k: $v',
        ),
      );
    } catch (_) {}
    try {
      if (options.data is FormData) {
        log.d(
          // ignore: unnecessary_null_comparison
          "REQUEST ► ︎ ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl}${options.path}"}\n\n"
          "Headers:\n"
          "$headerMessage\n"
          "❖ QueryParameters : \n"
          "Body: ${options.data.toString()}",
        );
      } else {
        const JsonEncoder encoder = JsonEncoder.withIndent('  ');
        final String prettyJson = encoder.convert(options.data);
        log.d(
          // ignore: unnecessary_null_comparison
          "REQUEST ► ︎ ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl}${options.path}"}\n\n"
          "Headers:\n"
          "$headerMessage\n"
          "❖ QueryParameters : \n"
          "Body: $prettyJson",
        );
      }
    } catch (e, stackTrace) {
      log.e("Failed to extract json request $e");
      nonFatalError(error: e, stackTrace: stackTrace);
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException dioException, ErrorInterceptorHandler handler) {
    log.e(
      "<-- ${dioException.message} ${dioException.response?.requestOptions != null ? (dioException.response!.requestOptions.baseUrl + dioException.response!.requestOptions.path) : 'URL'}\n\n"
      "${dioException.response != null ? dioException.response!.data : 'Unknown Error'}",
    );

    nonFatalError(error: dioException, stackTrace: dioException.stackTrace);
    super.onError(dioException, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    String headerMessage = "";
    response.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    if (response.data is FormData) {
      log.d(
        "<-- ${response.statusCode} ${response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL'}\n\n"
        "Headers:\n"
        "$headerMessage\n"
        "❖ QueryParameters : \n"
        "Body: ${response.data.toString()}",
      );
    } else {
      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      final String prettyJson = encoder.convert(response.data);
      log.d(
        // ignore: unnecessary_null_comparison
        "◀ ︎RESPONSE ${response.statusCode} ${response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL'}\n\n"
        "Headers:\n"
        "$headerMessage\n"
        "❖ Results : \n"
        "Response: $prettyJson",
      );
    }
    super.onResponse(response, handler);
  }
}

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient with MainBoxMixin, FirebaseCrashLogger {
  static const String _baseUrl = ListAPI.baseUrl;

  String? _auth;
  bool _isUnitTest = false;
  late Dio _dio;

  DioClient({bool isUnitTest = false}) {
    _isUnitTest = isUnitTest;

    try {
      _auth = getData(MainBoxKeys.token);
    } catch (_) {}

    _dio = _createDio();

    if (!_isUnitTest) _dio.interceptors.add(DioInterceptor());
  }

  Dio get dio {
    if (_isUnitTest) {
      return _dio;
    } else {
      try {
        _auth = getData(MainBoxKeys.token);
      } catch (_) {}

      final dio = _createDio();

      if (!_isUnitTest) dio.interceptors.add(DioInterceptor());

      return dio;
    }
  }

  Dio _createDio() => Dio(
        BaseOptions(
          baseUrl: _baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            if (_auth != null) ...{
              'Authorization': 'Bearer $_auth',
            },
          },
          receiveTimeout: const Duration(minutes: 1),
          connectTimeout: const Duration(minutes: 1),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (!isIsolate) {
        return Right(converter(response.data));
      }
      final isolateParse = IsolateParser<T>(
        response.data,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      log.e(e);
      if (e.response!.statusCode == 502) {
        return const Left(
          ServerFailure(
            "Server is down",
          ),
        );
      }
      if (!_isUnitTest || Platform.isAndroid) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      if (e.response?.data is String) {
        return Left(
          ServerFailure(
            e.response?.data,
          ),
        );
      }
      return Left(
        ServerFailure(
          e.response?.data['error'],
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    FormData? formData,
    ResponseConverter<T>? converter,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.post(
        url,
        data: data ?? formData,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      if (converter == null) {
        return Right(response.data as T);
      } else {
        if (!isIsolate) {
          return Right(converter(response.data));
        }
        final isolateParse = IsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      if (e.response!.statusCode == 502) {
        return Left(
          ServerFailure(
            "Server is down",
          ),
        );
      }
      return Left(
        ServerFailure(
          e.response == null
              ? e.message
              : e.response?.data['error'] as String? ?? "Internal Server Error",
        ),
      );
    }
  }

  Future<Either<Failure, T>> putRequest<T>(
    String url,
    String path, {
    Map<String, dynamic>? data,
    FormData? formData,
    ResponseConverter<T>? converter,
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.put(
        "$url/$path",
        data: data ?? formData,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      if (converter == null) {
        return Right(response.data as T);
      } else {
        if (!isIsolate) {
          return Right(converter(response.data));
        }
        final isolateParse = IsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      log.f(e);
      if (!_isUnitTest) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      if (e.response!.statusCode == 502) {
        return Left(
          ServerFailure(
            "Server is down",
          ),
        );
      }
      return Left(
        ServerFailure(
          e.response == null
              ? e.message
              : e.response?.data['error'] as String? ?? "Internal Server Error",
        ),
      );
    }
  }

  Future<Either<Failure, T>> deleteRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    ResponseConverter<T>? converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.delete(url, data: data);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      if (converter == null) {
        return Right(response.data as T);
      } else {
        if (!isIsolate) {
          return Right(converter(response.data));
        }
        final isolateParse = IsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      log.e(e);
      if (!_isUnitTest) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      if (e.response!.statusCode == 502) {
        return Left(
          ServerFailure(
            "Server is down",
          ),
        );
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, File>> downloadRequest(
    String url,
    String path, {
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.download(
        url,
        path,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      final file = File(path);

      return Right(file);
    } on DioException catch (e, stackTrace) {
      log.e(e);

      if (e.response!.statusCode == 404) {
        return Left(
          ServerFailure(
            "File not found",
          ),
        );
      }
      if (e.response!.statusCode == 400) {
        return Left(
          ServerFailure(
            "Bad Request",
          ),
        );
      }
      if (e.response!.statusCode == 502) {
        return const Left(
          ServerFailure(
            "Server is down",
          ),
        );
      }
      if (!_isUnitTest || Platform.isAndroid) {
        nonFatalError(error: e, stackTrace: stackTrace);
      }
      if (e.response?.data is String) {
        return Left(
          ServerFailure(
            e.response?.data,
          ),
        );
      }
      return Left(
        ServerFailure(
          e.response?.data['error'],
        ),
      );
    }
    // on PathAccessException {
    //   return Left(
    //     ServerFailure(
    //       "Close the file before downloading another file",
    //     ),
    //   );
    // } on FileSystemException {
    //   return Left(
    //     ServerFailure(
    //       "Close the file before downloading another file",
    //     ),
    //   );
    // }
  }
}

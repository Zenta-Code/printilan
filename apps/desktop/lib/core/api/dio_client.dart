import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sky_printing_admin/core/core.dart';
import 'package:sky_printing_admin/utils/utils.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient with MainBoxMixin {
  // final String _baseUrl = 'http://192.168.34.169:3001';
  // final String _baseUrl = "https://reqres.in";
  final String _baseUrl = "http://localhost:3000";

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
              'authorization': 'Bearer $_auth',
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
  }) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
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
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        log.e('Error getRequest $e', stackTrace: stackTrace);
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    required ResponseConverter<T> converter,
    bool isIsolate = true,
  }) async {
    try {
      final response = await dio.post(url, data: data);
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
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();
      return Right(result);
    } on DioException catch (e, stackTrace) {
      if (!_isUnitTest) {
        log.e('Error postRequest $e', stackTrace: stackTrace);
      }
      return Left(
        ServerFailure(
          e.response?.data['error'] as String? ?? e.message,
        ),
      );
    }
  }
}

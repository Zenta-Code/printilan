import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sky_printing/controllers/api/api.dart';

class ApiServices {
  final dio = Dio(
    BaseOptions(
      baseUrl: Endpoints.BASE_URL,
      connectTimeout: Duration(seconds: 3),
      receiveTimeout: Duration(seconds: 3),
    ),
  );

  Future<Response> login(String email, String password) async {
    final response = await dio.post(
      '${Endpoints.auth}/login',
      data: {
        'email': email,
        'password': password,
      },
    );

    debugPrint(response.data.toString());
    return response;
  }

  Future<Response> register(String email, String password) async {
    try {
      final response = await dio.post(
        Endpoints.auth,
        data: {
          'email': email,
          'password': password,
        },
      );
      return response;
    } catch (e) {
      throw e;
    }
  }
}

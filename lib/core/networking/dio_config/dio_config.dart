import 'package:dio/dio.dart';

Dio setupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = 60000
    ..options.receiveTimeout = 60000
    ..options.sendTimeout = 5000;

  dio.interceptors.add(LogInterceptor(
    requestHeader: true,
    request: true,
    requestBody: true,
    responseHeader: true,
    responseBody: true,
    error: true,
  ));
  return dio;
}

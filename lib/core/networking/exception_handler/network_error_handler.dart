import 'package:dio/dio.dart';

abstract class NetworkErrorHandler {
  /// Extract the message from the error response.
  ///
  /// Notes that the error response might change from [API | project] to another.
  String responseHandler(Response? response);

  /// Identify the type of error like [ dio, response, socket, format, unknown].
  String dioErrorHandler(error);
}

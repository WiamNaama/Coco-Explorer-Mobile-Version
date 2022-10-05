import 'dart:io';

import 'package:coco_app/core/networking/exception_handler/network_error_handler.dart';
import 'package:dio/dio.dart';

import '../../constant/web_service.dart';
import '../error/error_model.dart';

class NetworkErrorHandlerImpl extends NetworkErrorHandler {
  @override
  String responseHandler(Response? response) {
    ErrorModel errorModel = ErrorModel.fromJson(response?.data[0]);

    int statusCode = response?.statusCode ?? 0;

    switch (statusCode) {
      case badRequest:
        return badRequestMessage;
      case unAuthorized:
        return unAuthorizedMessage;
      case forbidden:
        return "${errorModel.field} ${errorModel.message}";
      case notFound:
        return "${errorModel.field} ${errorModel.message}";
      case requestTimeout:
        return requestTimeoutMessage;
      case conflict:
        return "${errorModel.field} ${errorModel.message}";
      case unprocessableEntity:
        return "${errorModel.field} ${errorModel.message}";
      case internalServerError:
        return internalServerErrorMessage;
      case serviceUnavailable:
        return serviceUnavailableMessage;
      default:
        return defaultErrorMessage;
    }
  }

  @override
  String dioErrorHandler(error) {
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              return cancelMessage;
            case DioErrorType.connectTimeout:
              return connectTimeoutMessage;
            case DioErrorType.other:
              return otherMessage;
            case DioErrorType.receiveTimeout:
              return receiveTimeoutMessage;
            case DioErrorType.response:
              return responseHandler(error.response);
            case DioErrorType.sendTimeout:
              return sendTimeoutMessage;
          }
        } else if (error is SocketException) {
          return socketExceptionMessage;
        } else {
          return unexpectedErrorMessage;
        }
      } on FormatException {
        return formatExceptionMessage;
      } catch (_) {
        return unexpectedErrorMessage;
      }
    } else {
      if (error.toString().contains("Is not a subtype of")) {
        return unableToProcessMessage;
      } else {
        return unexpectedErrorMessage;
      }
    }
  }
}

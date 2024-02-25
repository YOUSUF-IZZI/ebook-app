import 'package:dio/dio.dart';


abstract class Failure {
  final String errorMessage;
  const Failure({required this.errorMessage});
}


class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch(dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure(errorMessage: 'Bad Response');
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to API server was Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: 'Unknown Error');
    }
  }

  factory ServerFailure.fromStatusCode(int statusCode) {
    switch(statusCode) {
      case 400:
        return ServerFailure(errorMessage: 'Bad Request');
      case 401:
        return ServerFailure(errorMessage: 'Unauthorized');
      case 403:
        return ServerFailure(errorMessage: 'Forbidden');
      case 404:
        return ServerFailure(errorMessage: 'Not Found');
      case 500:
        return ServerFailure(errorMessage: 'Internal Server Error, Please try again later');
      case 502:
        return ServerFailure(errorMessage: 'Bad Gateway');
      case 503:
        return ServerFailure(errorMessage: 'Service Unavailable');
      case 504:
        return ServerFailure(errorMessage: 'Gateway Timeout');
      default:
        return ServerFailure(errorMessage: 'Server Error');
    }
  }

}
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout error ');
      // TODO: Handle this case.
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout error ');
      // TODO: Handle this case.
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout error ');
      // TODO: Handle this case.
      case DioExceptionType.badCertificate:
        return ServerFailure('Receive timeout error ');
      // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return ServerFailure.fromRespones(
            dioError.response!.statusCode!, dioError.response!.data);
      // TODO: Handle this case.
      case DioExceptionType.cancel:
        return ServerFailure('Receive timeout error ');
      // TODO: Handle this case.
      case DioExceptionType.connectionError:
        return ServerFailure('Receive timeout error ');
      // TODO: Handle this case.
      case DioExceptionType.unknown:
        return ServerFailure('Receive timeout error ');
      // TODO: Handle this case.
      default:
        return ServerFailure('OPPS ');
    }
  }

  factory ServerFailure.fromRespones(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}

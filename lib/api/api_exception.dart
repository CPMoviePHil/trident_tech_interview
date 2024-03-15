import 'package:dio/dio.dart' hide Headers;

final class ApiException implements Exception {

  int _errorCode = -1;
  String _errorMessage = "";
  DioExceptionType _dioErrorType = DioExceptionType.unknown;

  ApiException();

  ApiException.withError({Object? error}) {
    switch (error.runtimeType) {
      case DioException:
        _handleError(error as DioException);
        break;
      default:
    }
  }

  int getErrorCode() {
    return _errorCode;
  }

  String getErrorMessage() {
    return _errorMessage;
  }

  DioExceptionType getErrorType() {
    return _dioErrorType;
  }

  _handleError(DioException error) {
    _errorCode = error.response?.statusCode ?? -1;
    _dioErrorType = error.type;

    switch (error.type) {
      case DioExceptionType.cancel:
        _errorMessage = "Request was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        _errorMessage = "Connection timeout";
        break;
      case DioExceptionType.unknown:
        _errorMessage = "Connection failed due to internet connection";
        break;
      case DioExceptionType.receiveTimeout:
        _errorMessage = "Receive timeout in connection";
        break;
      case DioExceptionType.badResponse:
        _errorMessage = "Received invalid status code: ${error.response?.statusCode}";
        break;
      case DioExceptionType.badCertificate:
        _errorMessage = "auth expired";
        break;
      case DioExceptionType.sendTimeout:
        _errorMessage = "Receive timeout in send request";
        break;
      case DioExceptionType.connectionError:
        _errorMessage = "connection Error";
        break;
    }
    return _errorMessage;
  }
}
import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';

class LoggingInterceptors extends Interceptor {

  @override
  Future<dynamic> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  Future<dynamic> onError(DioException err, ErrorInterceptorHandler handler) async {
    log("<-- ${err.message} ${(err.response != null ? (err.response!.requestOptions.baseUrl + err.response!.requestOptions.path) : 'URL')}");
    log("${err.response != null ? err.response?.data ?? "" : 'Unknown Error'}");
    return handler.next(err);
  }

  @override
  Future<dynamic> onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }
}

import 'dart:async';

import 'package:dio/dio.dart';

import '../api/api_helper.dart';

import '../models/enums/api_http_status.dart';

import '../models/models.dart';

abstract class BaseRepository<T>{

  final StreamController<StreamResponse<T>> _controller = StreamController<StreamResponse<T>>();
  final Dio _dio = Dio();
  late final RestApiClient _restApiClient;

  RestApiClient get apiClient => _restApiClient;

  Stream<StreamResponse<T>> get response async* {
    yield* _controller.stream;
  }

  BaseRepository() {
    _restApiClient = RestApiClient(_dio, baseUrl: "https://example.com");
  }

  Future<void> call({bool loading = true});

  Future<void> request(
      Future<ApiResponse<T>> Function() function, {
        bool loading = true,
      }) async {
    if (loading) {
      _controller.sink.add(
        StreamResponse<T>(apiHttpStatus: ApiHttpStatus.loading),
      );
    }
    await function().then((response) {
      if (response.result && response.message == "success") {
        _controller.sink.add(
          StreamResponse<T>(apiHttpStatus: ApiHttpStatus.succeeded, value: response.value),
        );
      } else {
        _controller.sink.add(
          StreamResponse<T>(apiHttpStatus: ApiHttpStatus.error, apiException: ApiException()),
        );
      }
    }).catchError((e) {
      _controller.sink.add(
        StreamResponse<T>(apiHttpStatus: ApiHttpStatus.error, apiException: e),
      );
    });
  }

  Future<void> call2<P>(P param, {bool loading = true}) async {}

  Future<void> request2<V>(Future<ApiResponse<T>> Function(V) f, V val, {bool loading = true}) async {
    if (loading) {
      _controller.sink.add(
        StreamResponse<T>(apiHttpStatus: ApiHttpStatus.loading),
      );
    }
    await f(val).then((response) {
      if (response.result && response.message == "success") {
        _controller.sink.add(
          StreamResponse<T>(apiHttpStatus: ApiHttpStatus.succeeded, value: response.value),
        );
      } else {
        _controller.sink.add(
          StreamResponse<T>(apiHttpStatus: ApiHttpStatus.error, apiException: ApiException()),
        );
      }
    }).catchError((e) {
      _controller.sink.add(
        StreamResponse<T>(apiHttpStatus: ApiHttpStatus.error, apiException: e),
      );
    });
  }

  Future<void> close() async {
    await _controller.close();
  }
}
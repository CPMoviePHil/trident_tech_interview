import 'package:equatable/equatable.dart';

import '../api/api_exception.dart';

import 'enums/api_http_status.dart';

class StreamResponse<T> extends Equatable {

  final ApiHttpStatus apiHttpStatus;
  final ApiException? apiException;
  final T? value;

  const StreamResponse({required this.apiHttpStatus, this.apiException, this.value});

  @override
  List<Object?> get props => [apiHttpStatus, apiException, value];
}
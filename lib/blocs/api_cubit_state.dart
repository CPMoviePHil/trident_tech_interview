part of 'api_cubit.dart';

final class ApiCubitState<T> extends Equatable {

  final ApiHttpStatus apiHttpStatus;
  final ApiException? error;
  final T? v;

  const ApiCubitState._({
    this.apiHttpStatus = ApiHttpStatus.unknown,
    this.v,
    this.error,
  });

  const ApiCubitState.succeeded({required T values}) : this._(
    apiHttpStatus: ApiHttpStatus.succeeded,
    v: values,
  );

  const ApiCubitState.error({
    required ApiException error
  }) : this._(
    apiHttpStatus: ApiHttpStatus.error,
    error: error,
  );

  const ApiCubitState.unknown() : this._(apiHttpStatus: ApiHttpStatus.unknown);
  const ApiCubitState.loading() : this._(apiHttpStatus: ApiHttpStatus.loading);

  @override
  List<Object?> get props => [v, apiHttpStatus, error];
}
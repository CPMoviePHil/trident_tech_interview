import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../api/api_helper.dart';

import '../models/enums/api_http_status.dart';
import '../models/models.dart';

import '../repositories/base_repository.dart';

part 'api_cubit_state.dart';

abstract class ApiCubit<T> extends Cubit<ApiCubitState<T>> {

  ApiCubit({
    required BaseRepository<T> repository,
  }) : super(ApiCubitState<T>.unknown()) {
    _repository = repository;
    _subscription = _repository.response.listen((event) {
      if (event.apiHttpStatus == ApiHttpStatus.loading) {
        emit(ApiCubitState<T>.loading());
      } else if (event.apiHttpStatus == ApiHttpStatus.unknown) {
        emit(ApiCubitState<T>.unknown());
      }  else if (event.apiHttpStatus == ApiHttpStatus.error) {
        emit(ApiCubitState<T>.error(error: event.apiException!));
      } else if (event.apiHttpStatus == ApiHttpStatus.succeeded) {
        emit(ApiCubitState<T>.succeeded(values: event.value as T));
      }
    });
  }

  late final BaseRepository<T> _repository;
  late final StreamSubscription<StreamResponse<T>> _subscription;

  Future<void> call({bool loading = true}) async {
    await _repository.call(loading: loading);
  }

  Future<void> call2<P>(P param, {bool loading = true}) async {
    await _repository.call2<P>(param, loading: loading);
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    _repository.close();
    return super.close();
  }
}

final class UserInfoApiCubit extends ApiCubit<UserInfo> {
  UserInfoApiCubit({required super.repository});
}

final class ClassListApiCubit extends ApiCubit<List<ClassInfo>> {
  ClassListApiCubit({required super.repository});
}

final class UserListApiCubit extends ApiCubit<List<UserInfo>> {
  UserListApiCubit({required super.repository});
}
import '../api/api_helper.dart';

import '../models/models.dart';
import '../models/user_list_request.dart';

import '../utils/constants.dart';
import '../utils/log_util.dart';
import '../utils/mock_data.dart';

import 'base_repository.dart';

final class UserListRepository extends BaseRepository<List<UserInfo>> {

  Future<ApiResponse<List<UserInfo>>> _request<P>(P param) async {
    if (kUseMockData) {
      ApiResponse<List<UserInfo>> response;
      try {
        response = ApiResponse<List<UserInfo>>.fromJson(mockDataTeacherList);
      } catch (error) {
        final ApiException exception = ApiException.withError(error: error);
        throw exception;
      }
      return response;
    } else {
      final UserListRequest request = param as UserListRequest;
      ApiResponse<List<UserInfo>> response;
      try {
        response = await apiClient.getUserList(request);
      } catch (error) {
        final ApiException exception = ApiException.withError(error: error);
        throw exception;
      }
      return response;
    }
  }

  UserListRepository({super.dio});

  @override
  Future<void> call({bool loading = true}) {
    throw UnimplementedError();
  }

  @override
  Future<void> call2<UserListRequest>(UserListRequest param, {bool loading = true}) async {
    request2<UserListRequest>(_request, param, loading: loading);
  }
}
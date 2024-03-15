import '../api/api_helper.dart';
import '../models/models.dart';

import '../utils/constants.dart';
import '../utils/mock_data.dart';

import 'base_repository.dart';

final class UserListRepository extends BaseRepository<List<UserInfo>> {

  Future<ApiResponse<List<UserInfo>>> _request() async {
    if (kUseMockData) {
      return ApiResponse<List<UserInfo>>.fromJson(mockDataUserInfo);
    } else {
      ApiResponse<List<UserInfo>> response;
      try {
        response = await apiClient.getTeacherList();
      } catch (error) {
        final ApiException exception = ApiException.withError(error: error);
        throw exception;
      }
      return response;
    }
  }

  @override
  Future<void> call({bool loading = true}) async {
    await request(_request, loading: loading);
  }

  @override
  Future<void> call2<String>(String param, {bool loading = true}) async {
    throw UnimplementedError();
  }
}
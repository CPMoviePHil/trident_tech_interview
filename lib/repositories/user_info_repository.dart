import '../api/api_helper.dart';
import '../models/models.dart';

import '../utils/constants.dart';
import '../utils/mock_data.dart';

import 'base_repository.dart';

final class UserInfoRepository extends BaseRepository<UserInfo> {

  Future<ApiResponse<UserInfo>> _request<P>(P param) async {
    if (kUseMockData) {
      return ApiResponse<UserInfo>.fromJson(mockDataUserInfo);
    } else {
      final String userId = param as String;
      ApiResponse<UserInfo> response;
      try {
        response = await apiClient.getUserInfo(userId);
      } catch (error) {
        final ApiException exception = ApiException.withError(error: error);
        throw exception;
      }
      return response;
    }
  }

  @override
  Future<void> call({bool loading = true}) {
    throw UnimplementedError();
  }

  @override
  Future<void> call2<String>(String param, {bool loading = true}) async {
    request2<String>(_request, param, loading: loading);
  }
}
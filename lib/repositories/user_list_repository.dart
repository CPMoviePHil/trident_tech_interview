import '../api/api_helper.dart';
import '../models/enums/user_type.dart';
import '../models/models.dart';

import '../utils/constants.dart';
import '../utils/mock_data.dart';

import 'base_repository.dart';

final class UserListRepository extends BaseRepository<List<UserInfo>> {

  Future<ApiResponse<List<UserInfo>>> _request<P>(P param) async {
    if (kUseMockData) {
      return ApiResponse<List<UserInfo>>.fromJson(mockDataTeacherList);
    } else {
      final UserType userType = param as UserType;
      ApiResponse<List<UserInfo>> response;
      try {
        response = await apiClient.getUserList(userType.index);
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
  Future<void> call2<UserType>(UserType param, {bool loading = true}) async {
    request2<UserType>(_request, param, loading: loading);
  }
}
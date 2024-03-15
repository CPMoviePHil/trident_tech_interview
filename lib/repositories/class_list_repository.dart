import '../api/api_helper.dart';
import '../models/models.dart';

import '../utils/constants.dart';
import '../utils/mock_data.dart';

import 'base_repository.dart';

final class ClassListRepository extends BaseRepository<List<ClassInfo>> {

  Future<ApiResponse<List<ClassInfo>>> _request() async {
    if (kUseMockData) {
      return ApiResponse<List<ClassInfo>>.fromJson(mockDataClassList);
    } else {
      ApiResponse<List<ClassInfo>> response;
      try {
        response = await apiClient.getClassList();
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
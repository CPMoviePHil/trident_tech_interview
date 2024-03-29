import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/models.dart';
import '../models/user_list_request.dart';

import '../utils/constants.dart';

import 'api_response.dart';

part 'rest_api_client.g.dart';

@RestApi(baseUrl: kApiBaseUrl)
abstract class RestApiClient {

  factory RestApiClient(
      Dio dio, {
    String? baseUrl,
  }) {
    dio.options = BaseOptions(
      receiveTimeout: const Duration(milliseconds: 1000 * 60),
      connectTimeout: const Duration(milliseconds: 1000 * 60),
    );

    return _RestApiClient(dio, baseUrl: baseUrl);
  }

  // 使用者資訊
  @GET(userInfoPath)
  Future<ApiResponse<UserInfo?>> getUserInfo(@Query("userId") String userId);

  // 課程列表
  @GET(classListPath)
  Future<ApiResponse<List<ClassInfo>>> getClassList();

  // 授課講師列表
  @GET(userListPath)
  Future<ApiResponse<List<UserInfo>>> getUserList(@Body() UserListRequest request);

  // 授課講師所開課程列表
  @GET("/api/class/list")
  Future<ApiResponse<List<ClassInfo>>> getClassListByTeacher(@Query("userId") String userId);

  // 建立新講師
  @POST("/api/user/register")
  Future<ApiResponse<bool>> postUserInfoToRegister(@Body() TouchUserInfoRequest request);

  // 建立新課程
  @POST("/api/class/amend")
  Future<ApiResponse<bool>> postClassInfoToRegister(@Body() TouchClassInfoRequest request);

  // 更新課程內容
  @PUT("/api/class/amend")
  Future<ApiResponse<bool>> updateClassInfoToRegister(@Body() TouchClassInfoRequest request);

  // 刪除課程
  @DELETE("/api/class/amend")
  Future<ApiResponse<bool>> deleteClassInfoToRegister(@Body() DeleteClassInfoRequest request);
}
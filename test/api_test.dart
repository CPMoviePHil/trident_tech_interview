import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:trident_tech_interview/api/api_helper.dart';
import 'package:trident_tech_interview/blocs/api_cubit.dart';
import 'package:trident_tech_interview/models/class_info.dart';
import 'package:trident_tech_interview/models/enums/user_type.dart';
import 'package:trident_tech_interview/models/user_info.dart';
import 'package:trident_tech_interview/models/user_list_request.dart';
import 'package:trident_tech_interview/repositories/class_list_repository.dart';
import 'package:trident_tech_interview/repositories/user_info_repository.dart';
import 'package:trident_tech_interview/repositories/user_list_repository.dart';
import 'package:trident_tech_interview/utils/constants.dart';
import 'package:trident_tech_interview/utils/mock_data.dart';

void main() {

  group('user list fetch', () {
    kUseMockData = false;
    late Dio dio;
    late DioAdapter dioAdapter;
    late UserListRequest request;

    late UserListRepository userListRepository;

    setUp(() {
      dio = Dio();

      request = UserListRequest(
        userTypes: <int>[
          UserType.demonstrator.index,
          UserType.lecturer.index,
          UserType.seniorLecturer.index,
          UserType.professor.index
        ],
      );

      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
      userListRepository = UserListRepository(dio: dio);
    });

    blocTest<UserListApiCubit, ApiCubitState<List<UserInfo>>>(
      'when data is empty',
      setUp: () {
        dioAdapter.onGet(userListPath, (server) => server.reply(200, {
          "result": true,
          "code": 10000,
          "value": [],
        }), data: request.toJson());
      },
      build: () => UserListApiCubit(repository: userListRepository),
      act: (apiBloc) => userListRepository..call2(request),
      wait: const Duration(milliseconds: 100),
      expect: () => [
        const ApiCubitState<List<UserInfo>>.loading(),
        const ApiCubitState<List<UserInfo>>.succeeded(value: <UserInfo>[]),
      ],
    );

    blocTest<UserListApiCubit, ApiCubitState<List<UserInfo>>>(
      'when data is not empty',
      setUp: (() {
        dioAdapter.onGet(userListPath, (server) => server.reply(200, mockDataTeacherList), data: request.toJson());
      }),
      build: () => UserListApiCubit(repository: userListRepository),
      act: (apiBloc) => userListRepository..call2(request),
      wait: const Duration(milliseconds: 100),
      expect: () => [
        const ApiCubitState<List<UserInfo>>.loading(),
        ApiCubitState<List<UserInfo>>.succeeded(value: ApiResponse<List<UserInfo>>.fromJson(mockDataTeacherList).value),
      ],
    );

  });

  group("fetch class list", () {
    kUseMockData = false;
    late Dio dio;
    late DioAdapter dioAdapter;
    late ClassListRepository classListRepository;

    setUp(() {
      dio = Dio();

      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
      classListRepository = ClassListRepository(dio: dio);
    });

    blocTest<ClassListApiCubit, ApiCubitState<List<ClassInfo>>>(
      'when data is empty',
      setUp: () {
        dioAdapter.onGet(classListPath, (server) => server.reply(200, {
          "result": true,
          "code": 10000,
          "value": [],
        }));
      },
      build: () => ClassListApiCubit(repository: classListRepository),
      act: (apiBloc) => classListRepository..call(),
      wait: const Duration(milliseconds: 100),
      expect: () => [
        const ApiCubitState<List<ClassInfo>>.loading(),
        const ApiCubitState<List<ClassInfo>>.succeeded(value: <ClassInfo>[]),
      ],
    );

    blocTest<ClassListApiCubit, ApiCubitState<List<ClassInfo>>>(
      'when data is not empty',
      setUp: (() {
        dioAdapter.onGet(classListPath, (server) => server.reply(200, mockDataClassList));
      }),
      build: () => ClassListApiCubit(repository: classListRepository),
      act: (apiBloc) => classListRepository..call(),
      wait: const Duration(milliseconds: 100),
      expect: () => [
        const ApiCubitState<List<ClassInfo>>.loading(),
        ApiCubitState<List<ClassInfo>>.succeeded(
          value: ApiResponse<List<ClassInfo>>.fromJson(mockDataClassList).value,
        ),
      ],
    );
  });

  group("fetch user info", () {
    kUseMockData = false;
    late Dio dio;
    late DioAdapter dioAdapter;
    late UserInfoRepository userInfoRepository;
    late String userId;

    setUp(() {
      dio = Dio();

      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
      userInfoRepository = UserInfoRepository(dio: dio);
      userId = "123";
    });

    blocTest<UserInfoApiCubit, ApiCubitState<UserInfo?>>(
      'when data is empty',
      setUp: (() {
        dioAdapter.onGet(userInfoPath, (server) => server.reply(200, {
          "result": true,
          "code": 10000,
          "value": null,
        }));
      }),
      build: () => UserInfoApiCubit(repository: userInfoRepository),
      act: (apiBloc) => userInfoRepository..call2(userId),
      wait: const Duration(milliseconds: 100),
      expect: () => [
        const ApiCubitState<UserInfo?>.loading(),
        const ApiCubitState<UserInfo?>.succeeded(value: null),
      ],
    );

    blocTest<UserInfoApiCubit, ApiCubitState<UserInfo?>>(
      'when data is not empty',
      setUp: (() {
        dioAdapter.onGet(userInfoPath, (server) => server.reply(200, mockDataUserInfo));
      }),
      build: () => UserInfoApiCubit(repository: userInfoRepository),
      act: (apiBloc) => userInfoRepository..call2(userId),
      wait: const Duration(milliseconds: 100),
      expect: () => [
        const ApiCubitState<UserInfo?>.loading(),
        ApiCubitState<UserInfo?>.succeeded(
          value: ApiResponse<UserInfo?>.fromJson(mockDataUserInfo).value,
        ),
      ],
    );
  });
}

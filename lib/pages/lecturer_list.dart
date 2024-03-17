import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/api_cubit.dart';
import '../blocs/value_notifier_cubit.dart';

import '../generated/l10n.dart';

import '../models/enums/api_http_status.dart';
import '../models/enums/user_type.dart';
import '../models/user_info.dart';
import '../models/user_list_request.dart';

import '../repositories/user_list_repository.dart';

import '../views/user_info_card.dart';

class LecturerList extends StatelessWidget {

  const LecturerList({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        S.of(context).lecturer_list,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    body: BlocProvider(
      create: (context) => UserListApiCubit(
        repository: UserListRepository()..call2(
          UserListRequest(
            userTypes: <int>[
            UserType.demonstrator.index,
            UserType.lecturer.index,
            UserType.seniorLecturer.index,
            UserType.professor.index
            ],
          ),
        ),
      ),
      child: const _LecturerListView(key: Key("#lecturerListView")),
    ),
  );
}

class _LecturerListView extends StatelessWidget {

  const _LecturerListView({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<UserListApiCubit, ApiCubitState<List<UserInfo>>>(
    builder: (context, state) {
      if (state.apiHttpStatus == ApiHttpStatus.loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.apiHttpStatus == ApiHttpStatus.succeeded) {
        final List<UserInfo> values = state.v as List<UserInfo>;

        return ListView.builder(
          itemCount: values.length,
          itemBuilder: (context, index) => BlocProvider<ShowClassDetailCubit>(
            create: (context) => ShowClassDetailCubit(value: false),
            child: UserInfoCard(
              userInfo: values[index],
            ),
          ),
        );
      } else {
        return Center(
          child: Text(S.of(context).page_loading_error),
        );
      }
    },
  );
}
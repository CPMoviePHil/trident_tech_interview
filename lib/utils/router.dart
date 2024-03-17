import 'package:go_router/go_router.dart';

import '../models/class_info.dart';
import '../models/user_info.dart';

import '../pages/class_detail.dart';
import '../pages/home.dart';
import '../pages/language_setting.dart';
import '../pages/lecturer_list.dart';
import '../pages/page_not_found.dart';

const rHome = "/home";
const rLanguageSetting = "/language_setting";
const rLecturerList = "/lecturer_list";
const rClassDetail = "/class_detail";

final GoRouter kRouter = GoRouter(
  routes: <GoRoute>[
    GoRoute(path: '/', redirect: (context, state) => rHome),
    GoRoute(
      path: rHome,
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: rLanguageSetting,
      builder: (context, state) => const LanguageSetting(),
    ),
    GoRoute(
      path: rLecturerList,
      builder: (context, state) => const LecturerList(),
    ),
    GoRoute(
      path: rClassDetail,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final classInfo = extra["classInfo"] as ClassInfo?;
        final userInfo = extra["userInfo"] as UserInfo?;

        return classInfo != null && userInfo != null
            ? ClassDetail(classInfo: classInfo, userInfo: userInfo)
            : const PageNotFound();
      },
    ),

  ],
);

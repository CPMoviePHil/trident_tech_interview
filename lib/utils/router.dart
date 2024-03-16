import 'package:go_router/go_router.dart';

import '../pages/home.dart';
import '../pages/language_setting.dart';
import '../pages/lecturer_list.dart';

const rHome = "/home";
const rLanguageSetting = "/language_setting";
const rLecturerList = "/lecturer_list";

final GoRouter kRouter = GoRouter(
  routes: [
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
  ],
);

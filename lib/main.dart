import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';

import 'utils/dependency_injector.dart';
import 'blocs/blocs_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await DependencyInjection.sharePrefsInject();
  runApp(const MyApp());
}

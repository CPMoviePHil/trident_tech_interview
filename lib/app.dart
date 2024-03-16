import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/config_cubit.dart';
import 'utils/router.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ConfigCubit>(
    create: (context) => ConfigCubit()
      ..getLocaleFromPrefs(),
    child: const App(),
  );
}

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ConfigCubit, ConfigState>(
    builder: (context, state) => MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Trident Tech Interview',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale(state.locale.languageCode, state.locale.countryCode),
      theme: ThemeData(useMaterial3: true),
      routerConfig: kRouter,
    ),
  );
}
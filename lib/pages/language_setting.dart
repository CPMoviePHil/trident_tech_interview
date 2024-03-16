import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/config_cubit.dart';
import '../utils/extension.dart';
import '../generated/l10n.dart';

class LanguageSetting extends StatelessWidget {

  const LanguageSetting({super.key});

  void _showSnackBar ({
    required BuildContext context,
    required String msg,
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(msg)),
      );
  }

  Widget _languageOption ({
    required BuildContext context,
    required int index,
    required Locale locale,
  }) => BlocBuilder<ConfigCubit, ConfigState>(
    builder: (context, state) => Container(
      padding: const EdgeInsets.fromLTRB(10, 25, 0, 15),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.black,
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () async => await Future.delayed(const Duration(milliseconds: 100)).then((value) async {
          await S.load(locale).then((value) {
            context.read<ConfigCubit>().changeLocale(locale);
            _showSnackBar(
              context: context,
              msg: S.of(context).change_lang_alert(locale.localeMsg),
            );
          });
        }),
        child: Row(
          mainAxisAlignment: state.locale == locale
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "$index. ${locale.localeMsg}",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            if (state.locale == locale)
              const Icon(Icons.star_border_outlined),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text(
        S.of(context).language_setting_title,
        style: const TextStyle(fontSize: 20),
      ),
    ),
    body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: S.delegate.supportedLocales.length,
        itemBuilder: (context, index) => _languageOption(
          locale: S.delegate.supportedLocales[index],
          index: index + 1,
          context: context,
        ),
      ),
    ),
  );
}
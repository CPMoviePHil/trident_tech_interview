import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../utils/constants.dart';
import '../utils/share_prefs_util.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {

  ConfigCubit() : super(const ConfigState(locale: kLocale));
  final SharedPreferenceUtil _preferenceUtil = SharedPreferenceUtil();

  void getLocaleFromPrefs() {
    final String? languageCode = _preferenceUtil.getString(kKeyLanguageCode);
    final String? countryCode = _preferenceUtil.getString(kKeyCountryCode);

    if (languageCode != null) {
      final Locale prefsLocale = Locale(languageCode, countryCode);
      if (prefsLocale != state.locale) {
        emit(state.copyWith(locale: prefsLocale));
      }
    }
  }

  Future<void> changeLocale(Locale locale) async {
    if (state.locale != locale) {
      await _setLocaleToPrefs(locale).then((value) {
        emit(state.copyWith(locale: locale));
      });
    }
  }

  Future<void> _setLocaleToPrefs(Locale locale) async {
    await _preferenceUtil.setString(kKeyLanguageCode, locale.languageCode);
    if (locale.countryCode != null) {
      await _preferenceUtil.setString(kKeyCountryCode, locale.countryCode!);
    } else {
      await _preferenceUtil.remove(kKeyCountryCode);
    }
  }
}

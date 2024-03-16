import 'dart:ui';

const bool kUseMockData = true;

const String kApiBaseUrl = "https://example.com";
const Locale kLocale = Locale("zh", "TW");

final Map<Locale, String> kLocaleMsg = <Locale, String>{
  const Locale("zh", "TW"): "繁體中文",
  const Locale("en"): "English"
};
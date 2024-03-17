import 'dart:ui';

bool kUseMockData = true;

const String kApiBaseUrl = "https://example.com";

const String classListPath = "/api/class/list";
const String userListPath = "/api/user/list";
const String userInfoPath = "/api/user/info";

const Locale kLocale = Locale("zh", "TW");

final Map<Locale, String> kLocaleMsg = <Locale, String>{
  const Locale("zh", "TW"): "繁體中文",
  const Locale("en"): "English"
};
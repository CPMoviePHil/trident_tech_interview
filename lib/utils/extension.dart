import 'dart:ui';

import '../generated/l10n.dart';
import '../models/enums/user_type.dart';

import 'constants.dart';

extension LocaleMsg on Locale {
  String get localeMsg => kLocaleMsg[this] ?? "";
}

extension UserTypeMsg on UserType {
  String? get userTypeMsg {
    if (this == UserType.demonstrator) {
      return S.current.demonstrator;
    }
    if (this == UserType.lecturer) {
      return S.current.lecturer;
    }
    if (this == UserType.seniorLecturer) {
      return S.current.senior_lecturer;
    }
    if (this == UserType.professor) {
      return S.current.professor;
    }

    return null;
  }
}
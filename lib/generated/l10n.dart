// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Lecturer List`
  String get lecturer_list {
    return Intl.message(
      'Lecturer List',
      name: 'lecturer_list',
      desc: '',
      args: [],
    );
  }

  /// `Class List`
  String get class_list {
    return Intl.message(
      'Class List',
      name: 'class_list',
      desc: '',
      args: [],
    );
  }

  /// `Student List`
  String get student_list {
    return Intl.message(
      'Student List',
      name: 'student_list',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language_setting_title {
    return Intl.message(
      'Language',
      name: 'language_setting_title',
      desc: '',
      args: [],
    );
  }

  /// `Change Language: {lang}`
  String change_lang_alert(Object lang) {
    return Intl.message(
      'Change Language: $lang',
      name: 'change_lang_alert',
      desc: '',
      args: [lang],
    );
  }

  /// `Page Loading Error`
  String get page_loading_error {
    return Intl.message(
      'Page Loading Error',
      name: 'page_loading_error',
      desc: '',
      args: [],
    );
  }

  /// `Demonstrator`
  String get demonstrator {
    return Intl.message(
      'Demonstrator',
      name: 'demonstrator',
      desc: '',
      args: [],
    );
  }

  /// `Lecturer`
  String get lecturer {
    return Intl.message(
      'Lecturer',
      name: 'lecturer',
      desc: '',
      args: [],
    );
  }

  /// `Senior Lecturer`
  String get senior_lecturer {
    return Intl.message(
      'Senior Lecturer',
      name: 'senior_lecturer',
      desc: '',
      args: [],
    );
  }

  /// `Professor`
  String get professor {
    return Intl.message(
      'Professor',
      name: 'professor',
      desc: '',
      args: [],
    );
  }

  /// `Class Detail Description`
  String get class_detail_title {
    return Intl.message(
      'Class Detail Description',
      name: 'class_detail_title',
      desc: '',
      args: [],
    );
  }

  /// `Page Not Found`
  String get page_not_found {
    return Intl.message(
      'Page Not Found',
      name: 'page_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get desc {
    return Intl.message(
      'Description',
      name: 'desc',
      desc: '',
      args: [],
    );
  }

  /// `Class Name`
  String get class_name {
    return Intl.message(
      'Class Name',
      name: 'class_name',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Class Time`
  String get class_time {
    return Intl.message(
      'Class Time',
      name: 'class_time',
      desc: '',
      args: [],
    );
  }

  /// `Class Desc`
  String get class_desc {
    return Intl.message(
      'Class Desc',
      name: 'class_desc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

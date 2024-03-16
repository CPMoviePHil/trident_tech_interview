// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_TW';

  static String m0(lang) => "跟改語系: ${lang}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "change_lang_alert": m0,
        "class_list": MessageLookupByLibrary.simpleMessage("課程清單"),
        "demonstrator": MessageLookupByLibrary.simpleMessage("簡報者"),
        "language_setting_title": MessageLookupByLibrary.simpleMessage("語系"),
        "lecturer": MessageLookupByLibrary.simpleMessage("講師"),
        "lecturer_list": MessageLookupByLibrary.simpleMessage("講師清單"),
        "page_loading_error": MessageLookupByLibrary.simpleMessage("載入錯誤"),
        "professor": MessageLookupByLibrary.simpleMessage("教授"),
        "senior_lecturer": MessageLookupByLibrary.simpleMessage("資深講師"),
        "student_list": MessageLookupByLibrary.simpleMessage("學生清單")
      };
}

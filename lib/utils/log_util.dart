import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(printWrapped2);
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach((match) => log(match.group(0) ?? ""));
  }

  void printWrapped2(String text) => debugPrint(text, wrapWidth: 1024);
}

class ConsoleOutput2 extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (var line in event.lines) {
      log(line);
    }
  }
}

final logger = Logger(
  printer: PrettyPrinter(stackTraceBeginIndex: 1),
  output: ConsoleOutput(),
);

void logMsg(String msg, {Type? runtimeType}) {
  if (kDebugMode) {
    logger.t("[$runtimeType]: $msg");
  }
}

void logErr(String err, {Type? runtimeType}) {
  if (kDebugMode) {
    logger.e("[$runtimeType]: $err");
  }
}

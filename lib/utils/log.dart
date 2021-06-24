
import 'package:flutter/foundation.dart';

void jkLog(Object message, StackTrace current) {
  JKCustomTrace programInfo = JKCustomTrace(current);
  if (kDebugMode) {
    print("所在文件: ${programInfo.fileName}, 所在行: ${programInfo.lineNumber}, 打印信息: $message");
  } else if (kReleaseMode) {
    print("----ReleaseMode-------");
  } else if (kProfileMode) {
    print("----ProfileMode-------");
  }
}

class JKCustomTrace {
  final StackTrace _trace;
  String fileName;
  int lineNumber;
  int columnNumber;

  JKCustomTrace(this._trace) {
    _parseTrace();
  }

  void _parseTrace() {
    var traceString = this._trace.toString().split("\n")[0];
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceString.substring(indexOfFileName);
    var listOfInfos = fileInfo.split(":");
    this.fileName = listOfInfos[0];
    this.lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    this.columnNumber = int.parse(columnStr);
  }
}
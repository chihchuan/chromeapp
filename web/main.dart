/**
 * A "hello world" application for Chrome Apps written in Dart.
 *
 * For more information, see:
 * - http://developer.chrome.com/apps/api_index.html
 * - https://github.com/dart-gde/chrome.dart
 */

import 'dart:html';
import 'package:chrome/chrome_app.dart' as chrome;


void main() {
  querySelector("#clickTime").onClick.listen(getInfo);
}

void getInfo(Event e) {
  //querySelector("#contain").text = "hmm";
}

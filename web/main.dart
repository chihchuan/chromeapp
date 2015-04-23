import 'dart:html';
import 'package:chrome/chrome_app.dart' as chrome;
import 'package:chrome/gen/runtime.dart';

void main() {
  querySelector("btn").onClick.listen(handleClick);
}

void handleClick(Event e) {
  chrome.runtime.getPlatformInfo().then((m) => handleInfo(m));
}

handleInfo(PlatformInfo m) {
  querySelector("msg").text = m.arch;
}


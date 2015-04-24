import 'dart:html';
import 'package:chrome/chrome_app.dart' as chrome;
import 'package:chrome/gen/runtime.dart';
import 'package:chrome/gen/serial.dart';

var msgField = querySelector("#msg");
var selectport = querySelector("#selectPort");

void main() {  
  addMsg("Init...");
  addMsg(getOptionText(selectport, selectport.selectedIndex));
}

void addMsg(String str) {
  msgField.appendHtml(str + "<br/>");
}

String getOptionValue(SelectElement e, int index) {
  return e.options[index].value;
}

String getOptionText(SelectElement e, int index) {
  return e.options[index].text;
}

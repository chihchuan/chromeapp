import 'dart:html';
import 'dart:convert';
import 'package:chrome/chrome_app.dart' as chrome;
import 'package:chrome/gen/runtime.dart';
import 'package:chrome/gen/serial.dart';

var msgField = querySelector("#msg");
var selectport = querySelector("#selectPort");

void main() {  
  addMsg("程式啟動 ...");  
  chrome.serial.getDevices().then(handleDeviceList);
}

handleDeviceList(List<DeviceInfo> devices) {
  if (devices.isEmpty) {
    addMsg("沒有找到 COM Port !!");
  } else {
    //devices.forEach(handleDevice);
    Map res = getOption(selectport, 0);
    addMsg(res["value"]);
  }
}

void addMsg(String str) {
  DateTime now = new DateTime.now();
  msgField.appendHtml("[${now.toString()}]:\t");
  msgField.appendHtml(str + "\n");  
}

String getOptionValue(SelectElement e, int index) {
  return e.options[index].value;
}

String getOptionText(SelectElement e, int index) {
  return e.options[index].text;
}

Map getOption(SelectElement e, int index) {
  String result;
  result = '{"value": ${e.options[index].value}, "text": e.options[index].text}';
  return JSON.decode(result);
}
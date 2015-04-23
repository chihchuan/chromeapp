import 'dart:html';
import 'package:chrome/chrome_app.dart' as chrome;
import 'package:chrome/gen/runtime.dart';
import 'package:chrome/gen/serial.dart';

void main() {
  querySelector("#btn").onClick.listen(handleClick);
}

void handleClick(Event e) {
  chrome.serial.getDevices().then((infoList) => handleInfoList(infoList))
    .catchError((e) => addMsg(e.toString()));  
}

handleInfoList(List<DeviceInfo> infoList) {
  if (infoList.isNotEmpty) {
    infoList.forEach(handleInfo);
  } else {
    addMsg("InfoList is Empty !");
  }  
}

handleInfo(DeviceInfo info) {
  addMsg(info.path);
}

void addMsg(String str) {
  querySelector("#msg").appendHtml("<br/>"+str);
}


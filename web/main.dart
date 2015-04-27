import 'dart:html';
import 'dart:convert';
import 'MsgBox.dart';
import 'ControlPanel.dart';
import 'package:chrome/chrome_app.dart' as chrome;
import 'package:chrome/gen/runtime.dart';
import 'package:chrome/gen/serial.dart';


var selectport = querySelector("#selectPort");
var mb = new MsgBox();
var cp = new CtrlPanel();

void main() {   
  mb.addMsg("程式啟動 ...");  
  chrome.serial.getDevices().then(handleDeviceList);
}

handleDeviceList(List<DeviceInfo> devices) {
  if (devices.isEmpty) {
    mb.addMsg("沒有找到 COM Port !!");
  } else {
    //devices.forEach(handleDevice);
    Map res = getOption(selectport, 0);
    //mb.addMsg(res["value"]);
  }
}

Map getOption(SelectElement e, int index) {
  String result;
  result = '{"value": "${e.options[index].value}", "text": "${e.options[index].text}"}';
  return JSON.decode(result);
}

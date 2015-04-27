import 'dart:html';

class MsgBox {
  var _msgField;
  
  MsgBox() {
    _msgField = querySelector("#msg");
  }
  
  void addMsg(String str) {
    DateTime now = new DateTime.now();
    _msgField.appendHtml("[${now.toString()}]:\t");
    _msgField.appendHtml(str + "\n");
  }
}


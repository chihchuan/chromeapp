import 'dart:html';

class CtrlPanel {
  var _cp = querySelector("#ctrlPanel");
  
  CtrlPanel() {
    //_cp.children.forEach((e) => e.attributes(JSON.decode({"disabled", "true"})));
    Map dis = JSON.decode('{"disabled": "true"}');
    _cp.children.forEach((e) => e.attributes(dis));
  }
}
                         
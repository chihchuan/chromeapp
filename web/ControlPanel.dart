import 'dart:html';

class CtrlPanel {
  var _cp = querySelector("#ctrlPanel");
  
  CtrlPanel() {    
    _cp.children.forEach((e) => e.setAttribute("disabled", "true"));
  }
}
                         
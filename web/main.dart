import 'dart:html';

import 'package:chrome/chrome_app.dart' as chrome;

int boundsChange = 100;
int count = 0;

void main() {
  querySelector('#text_id').onClick.listen(resizeWindow);
}

void resizeWindow(MouseEvent event) {
  chrome.ContentBounds bounds = chrome.app.window.current().getBounds();

  bounds.width += boundsChange;
  bounds.left -= boundsChange ~/ 2;

  chrome.app.window.current().setBounds(bounds);

  boundsChange *= -1;

  querySelector("#count").text = (count++).toString();
}

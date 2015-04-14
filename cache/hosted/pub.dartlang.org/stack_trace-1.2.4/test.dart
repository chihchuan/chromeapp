import 'dart:async';
import 'package:stack_trace/stack_trace.dart';

main() async {
  Chain.capture(() async {
    try {
      await testFunction();
    } catch(e,st) {
      print(new Chain.forTrace(st));
    }
  });
}


Future testFunction() async {
  throw new Exception("TEST");
}
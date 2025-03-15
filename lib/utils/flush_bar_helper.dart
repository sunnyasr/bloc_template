import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';

class FlushBarHelper {
  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(context: context, flushbar: Flushbar(
      forwardAnimationCurve: Curves.decelerate,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.all(15),
      duration: Duration(seconds: 3),
      borderRadius: BorderRadius.circular(8),
      message: message,
    )..show(context));
  }
}

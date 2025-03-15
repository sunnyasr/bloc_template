import 'dart:async';

import 'package:bloc_course/config/routes/routes_name.dart';
import 'package:bloc_course/services/session_manager/session_controller.dart';
import 'package:flutter/cupertino.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    SessionController()
        .getUserFromPreference()
        .then((value) {
          if (SessionController().isLogin ?? false) {
            Timer(
              Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesName.homeScreen,
                (route) => false,
              ),
            );
          } else {
            Timer(
              Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesName.loginScreen,
                (route) => false,
              ),
            );
          }
        })
        .onError((error, stackTrace) {});

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesName.loginScreen,
        (route) => false,
      ),
    );
  }
}

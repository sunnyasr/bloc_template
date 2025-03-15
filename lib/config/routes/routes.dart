import 'package:bloc_course/config/routes/routes_name.dart';

import 'package:flutter/material.dart';
import '../../views/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      default:
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}

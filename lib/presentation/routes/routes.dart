import 'package:flutter/material.dart';

import '../routes/route_constants.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/login_screen/login_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes => {
        RouteList.initial: (context) => const LoginScreen(),
        RouteList.homeScreen: (context) => const HomeScreen(),

      };
}

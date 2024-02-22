import 'package:flutter/material.dart';
import 'package:promilo_app/presentation/screens/navigation_screen/navigation_screen.dart';

import '../routes/route_constants.dart';
import '../screens/account_screen/account_screen.dart';
import '../screens/explore_screen/explore_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/meetup_screen/meetup_screen.dart';
import '../screens/prolet_screen/prolet_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes => {
        RouteList.initial: (context) => const LoginScreen(),
        RouteList.homeScreen: (context) => HomeScreen(),
        RouteList.proletScreen: (context) => const ProletScreen(),
        // RouteList.meetUpScreen: (context) => const MeetUpScreen(),
        RouteList.exploreScreen: (context) => const ExploreScreen(),
        RouteList.accountScreen: (context) => const AccountScreen(),
        RouteList.navigationScreen: (context) => const NavigationScreen(),

      };
}

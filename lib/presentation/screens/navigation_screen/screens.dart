import 'package:flutter/material.dart';
import 'package:promilo_app/presentation/screens/home_screen/home_screen.dart';

import '../account_screen/account_screen.dart';
import '../explore_screen/explore_screen.dart';
import '../meetup_screen/meetup_screen.dart';
import '../prolet_screen/prolet_screen.dart';

enum Screens {
  home,
  prolet,
  meetUp,
  explore,
  account
}

List<Widget> screens = const[
  HomeScreen(),
  ProletScreen(),
  MeetUpScreen(),
  ExploreScreen(),
  AccountScreen(),
];


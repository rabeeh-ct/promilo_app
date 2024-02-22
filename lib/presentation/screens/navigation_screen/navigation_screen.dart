import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/bottom_nav_bar_item.dart';
import 'navigation_screen_controller.dart';
import 'screens.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationScreenController navigationScreenController = Get.find();
    // final SocialMediaHomeScreenController homeScreenController = Get.find();
    return Obx(() {
      return Scaffold(
        // body: screens[navigationScreenController.currentScreen.value.index],
        body: IndexedStack(
          children: screens,
          index: navigationScreenController.currentScreenIndex,
        ),
        // body: DefaultPageTransition(
        //     child: screens[
        //         navigationScreenController.currentScreen.value.index]),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: BottomBarIcon(
                  imagePath: "assets/icons/home.svg",
                  index: 0,
                  selectedIndex:
                      navigationScreenController.currentScreen.value.index,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: BottomBarIcon(
                imagePath: "assets/icons/menu.svg",
                index: 1,
                selectedIndex:
                    navigationScreenController.currentScreen.value.index,
              ),
              label: "Prolet",
            ),
            BottomNavigationBarItem(
              icon: BottomBarIcon(
                imagePath: "assets/icons/handshake.svg",
                index: 2,
                selectedIndex:
                    navigationScreenController.currentScreen.value.index,
              ),
              label: "MeetUp",
            ),
            BottomNavigationBarItem(
              icon: BottomBarIcon(
                isItStore: true,
                imagePath: "assets/icons/folder.svg",
                index: 3,
                selectedIndex:
                    navigationScreenController.currentScreen.value.index,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
                icon: BottomBarIcon(
                  imagePath: "assets/icons/user.svg",
                  selectedIndex:
                      navigationScreenController.currentScreen.value.index,
                  index: 4,
                ),
                label: "Account"),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: navigationScreenController.currentScreen.value.index,
          onTap: (index) {
            navigationScreenController.changeScreen(index);
          },
        ),
      );
    });
  }
}

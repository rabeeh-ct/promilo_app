import 'package:get/get.dart';

import '../../../utils/snackbar_utils.dart';
import 'screens.dart';

class NavigationScreenController extends GetxController {
  @override
  void onInit() {
    currentScreen.value = Screens.values[0];
    super.onInit();
  }

  Rx<Screens> currentScreen = Screens.home.obs;
  int currentScreenIndex = 0;

  changeScreen(int index) {
    // if (index == 0) {
    //   currentScreenIndex==index?Get.find<SocialMediaHomeScreenController>()
    //       .scrollController
    //       .animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut):null;
    //   Get.find<SocialMediaHomeScreenController>().pullRefresh();
    // }
    // Screens.values[index] == Screens.stores
    //     ? Get.find<StoresScreenController>().firstLoading()
    //     : Screens.values[index] == Screens.bookings
    //         ? Get.find<BookingsScreenController>().firstLoading()
    //         : Screens.values[index] == Screens.socialMediaProfile
    //             ? Get.find<SocialMyProfileScreenController>().firstLoading()
    //             : null;
    currentScreenIndex = index;
    return currentScreen.value = Screens.values[index];
  }

  DateTime? currentBackPressTime;

  bool onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null) {
      currentBackPressTime = now;
      showMessage("Press back again to exit");
      return false;
    } else if (now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      showMessage("Press back again to exit");
      return false;
    } else {
      // Get.back();
      return true;
    }
  }
}

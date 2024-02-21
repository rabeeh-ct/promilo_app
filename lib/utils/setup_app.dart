// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';

import '../di/di.dart';
import '../presentation/theme/theme.dart';
import 'firebase_messaging.dart';
import 'get_theme_mode.dart';

late ThemeMode themeMode;

setupApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // getLostData();
  // setupNotification();
  DependencyInjection.init();
  setSystemOverlay();
  // await GetStorage.init();
  // themeMode = await getThemeMode();
  // await Firebase.initializeApp();

  // initUniLinks(Get.context);
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/routes/route_constants.dart';
import 'presentation/routes/routes.dart';
import 'presentation/theme/theme.dart';
import 'utils/setup_app.dart';

void main() async {
  await setupApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final locale = setupLocale();
    return GetMaterialApp(
      title: 'Doob',
      debugShowCheckedModeBanner: false,
      // themeMode: themeMode,
      // locale: locale,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      theme: themeData(context),
      // darkTheme: themeDataDark(context),
      initialRoute: RouteList.initial,
      routes: Routes.routes,
    );
  }
}

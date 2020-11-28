import 'package:add_life/bindings/home_screen_bindings.dart';
import 'package:add_life/core/models/product_detail_model.dart';
import 'package:add_life/ui/routes/app_screens.dart';
import 'package:add_life/ui/routes/app_routes.dart';
import 'package:add_life/ui/theme.dart';
import 'package:add_life/ui/translations/app_transations.dart';
import 'package:add_life/ui/views/product_info/product_details_screen.dart';
import 'package:add_life/ui/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'ui/views/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translationsKeys: AppTranslations.translations,
      getPages: AppScreens.screens,
      initialRoute: initialRoute,
      locale:
          Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'US'), // specify
      theme: brandTheme,
      home: WelcomeScreen(),
    );
  }
}

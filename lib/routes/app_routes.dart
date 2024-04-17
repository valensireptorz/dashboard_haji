import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/page_2_option_three_screen/page_2_option_three_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String page2OptionThreeScreen = '/page_2_option_three_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    page2OptionThreeScreen: (context) => Page2OptionThreeScreen(),
    initialRoute: (context) => Page2OptionThreeScreen()
  };
}

import 'package:flutter/material.dart';
import 'package:flutter_examen/screens/home_screens.dart';
import 'screens/list_page.dart';

class AppRoutes {
  static const String home = '/home';
  // static const String list = '/list';

  static Map<String, WidgetBuilder> get routes => {
        home: (context) => const HomePage(),
        //list: (context) => const ListPage(name: list),
      };
}

import 'package:flutter/material.dart';
import 'package:personal_expenses/feature/login/presentation/login_page.dart';

class AppRoutes {
  static String login = '/login';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage(),
  };
}

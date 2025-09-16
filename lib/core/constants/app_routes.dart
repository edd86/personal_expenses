import 'package:flutter/material.dart';
import 'package:personal_expenses/feature/login/presentation/pages/login_page.dart';
import 'package:personal_expenses/feature/user_account/presentation/pages/new_user_form.dart';

class AppRoutes {
  static String login = '/login';
  static String newUser = '/newUser';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage(),
    newUser: (context) => NewUserForm(),
  };
}

import 'package:ecommerce_app/helper/routes.dart';
import 'package:flutter/cupertino.dart';
import '../views/screens/landing_page.dart';
import '../views/screens/login_page.dart';
import '../views/screens/register_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRouters.loginPageRoutes:
      return CupertinoPageRoute(
        builder: (_) => const LoginPage(),
      );
      case AppRouters.registerPageRoutes:
      return CupertinoPageRoute(
        builder: (_) => const RegisterPage(),
      );
    case AppRouters.lodingPageRoutes:
    default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
      );
  }
}

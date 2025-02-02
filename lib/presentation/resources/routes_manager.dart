import 'package:advanced_flutter_project/presentation/forgetPassword_view/forgetPassword_view.dart';
import 'package:advanced_flutter_project/presentation/login_view/login_view.dart';
import 'package:advanced_flutter_project/presentation/main_view/main_view.dart';
import 'package:advanced_flutter_project/presentation/register_view/register_view.dart';
import 'package:advanced_flutter_project/presentation/splash_view/splash_view.dart';
import 'package:advanced_flutter_project/presentation/storeDetails_view/storeDetails_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashScreen = '/';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String forgetPasswordScreen = '/forgetPassword';
  static const String mainScreen = '/main';
  static const String storeDetailsScreen = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashView(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => LoginView(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => RegisterView(),
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => ForgetPasswordView(),
        );
      case Routes.storeDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => StoreDetailsView(),
        );
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (context) => MainView(),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text('No Route Found!'),
        ),
      ),
    );
  }
}

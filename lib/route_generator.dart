import 'package:crypt_app/features/Auth/LogIn/View/LoginView.dart';
import 'package:crypt_app/features/Auth/Register/View/RegisterView.dart';
import 'package:crypt_app/features/Tabs/View/tabsView.dart';
import 'package:flutter/material.dart';

/// This is a RouteGenerator class. This class helps to make code tidious and less cluttered
class RouteGenerator {
  /// This Function is Used to dynamically generate Routes by accepting Dynamic RouteSettings
  /// it Returns a dynamic Route that can be passed to the navigator
  /// Data can be passed as arguments through: push_name
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      // AUTHENTICATION ROUTES
      case '/':
        return MaterialPageRoute(builder: (_) => LoginView());

      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());

      // REGISTER ROUTES
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterView());

      

      // case '/forgetPassword':
      //   return MaterialPageRoute(builder: (_) => ForgetPasswordView());

      // USER ROUTERS
      case '/tabs':
        return MaterialPageRoute(builder: (_) => TabsView());

      

      default:
        return _errorRoute();
    }
  }

// This method returns a default ERROR route when there is an error.
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(child: Text("ERROR 404")),
      );
    });
  }
}
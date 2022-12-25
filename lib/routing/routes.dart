import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw3/routing/router.dart';
import 'package:hw3/ui/page/auth/forgotPasswordPage.dart';
import 'package:hw3/ui/page/auth/loginPage.dart';
import 'package:hw3/ui/page/auth/registerPage.dart';
import 'package:hw3/ui/page/splashPage.dart';


class RoutsGnerate{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteGenerator.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      // case RouteGenerator.messangerPage:
      // return MaterialPageRoute(builder: (_) => const MessengerScreen());
      case RouteGenerator.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case RouteGenerator.registerPage:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case RouteGenerator.forgetPassword:
        return MaterialPageRoute(builder: (_) => ForgetPasswordPage());
         default:
        throw const FormatException("Route not found");
    }
  }
}
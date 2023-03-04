import 'package:flutter/material.dart';
import 'package:hw3/routing/router.dart';
import 'package:hw3/ui/page/auth/forgotPasswordPage.dart';
import 'package:hw3/ui/page/auth/loginPage.dart';
import 'package:hw3/ui/page/auth/registerPage.dart';
import 'package:hw3/ui/page/homePage.dart';
import 'package:hw3/ui/page/splashPage.dart';

import '../ui/page/auth/changePasswordPage.dart';


class RoutsGenerate{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteGenerator.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());

      case RouteGenerator.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RouteGenerator.registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case RouteGenerator.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordPage());
      case RouteGenerator.changePasswordPage:
        return MaterialPageRoute(builder: (_) => const ChangePasswordPage());
      case RouteGenerator.homePage:
        return MaterialPageRoute(builder: (_) =>  HomePage());
         default:
        throw const FormatException("Route not found");
    }
  }
}
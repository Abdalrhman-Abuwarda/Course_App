import 'package:flutter/material.dart';
import 'package:hw3/resources/assetsManager.dart';
import 'package:hw3/resources/valuesManager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw3/routing/navigations.dart';
import 'package:hw3/routing/router.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.loginPage);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png",
        height: AppSize.s95.h,
        width: AppSize.s277.w,),
      ),
    );
  }
}

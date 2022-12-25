import 'package:flutter/material.dart';
import 'package:hw3/resources/assetsManager.dart';
import 'package:hw3/resources/colorsManager.dart';
import 'package:hw3/resources/valuesManager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw3/routing/navigations.dart';
import 'package:hw3/routing/router.dart';
import 'package:hw3/ui/shared/customTextFeild.dart';
import 'package:hw3/ui/shared/footerPage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpace(AppSize.s190.h),
              Image.asset(ImageAssets.splashLogo,
                height: AppSize.s95.h,
                width: AppSize.s277.w,),
              addVerticalSpace(AppSize.s50.h),
              const CustomTextField(hintText: 'Email Address', prefixIcon: Icon(Icons.email_outlined),),
              addVerticalSpace(AppSize.s10.h),
              const CustomTextField(hintText: 'Password', prefixIcon: Icon(Icons.lock_outline),),
              addVerticalSpace(AppSize.s16.h),
              Row(
                children: [
                  const Spacer(),
                  TextButton(onPressed: (){ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.forgetPassword);},
                      child: Text("Forgot Password?", style: Theme.of(context).textTheme.subtitle1,))
                ],
              ),
              addVerticalSpace(AppSize.s18.h),
              ElevatedButton(onPressed: (){},
                  child: const Text("Login", style: TextStyle(color: ColorManager.primaryFontColor),)),
              addVerticalSpace(AppSize.s100.h),
                FooterPage(
                  mainText: "Don't have an account?",
                  textButton: "Register Now",
                  onPressed: (){ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.registerPage);},
                ),
            ],
          ),
        ),
      ),
    );
  }
}

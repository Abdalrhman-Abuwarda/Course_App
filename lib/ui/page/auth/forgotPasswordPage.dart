import 'package:flutter/material.dart';
import 'package:hw3/resources/assetsManager.dart';
import 'package:hw3/resources/colorsManager.dart';
import 'package:hw3/resources/valuesManager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw3/routing/navigations.dart';
import 'package:hw3/routing/router.dart';
import 'package:hw3/ui/shared/customTextFeild.dart';
import 'package:hw3/ui/shared/footerPage.dart';


class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpace(AppSize.s90.h),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset(
                  ImageAssets.mainImage,
                  height: AppSize.s200.h,
                  width: AppSize.s200.w,
                  fit: BoxFit.contain,
                ),
              ),
              addVerticalSpace(AppSize.s45.h),
              Text("Forgot your password?", style: Theme.of(context).textTheme.headline2,),
              addVerticalSpace(AppSize.s10.h),
              Text("Enter your registered email address below to receive your password reset instructions!", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,),
              addVerticalSpace(AppSize.s25.h),
              const CustomTextField(hintText: 'Email Address', prefixIcon: Icon(Icons.email_outlined),),
              addVerticalSpace(AppSize.s15.h),
              ElevatedButton(onPressed: (){ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.changePasswordPage);},
                  child: const Text("Next", style: TextStyle(color: ColorManager.primaryFontColor),)),
              addVerticalSpace(AppSize.s146.h),
              FooterPage(
                mainText: "Remember Password?",
                textButton: "Login Now",
                onPressed: (){ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.loginPage);},
              )
            ],
          ),
        ),
      ),
    );
  }
}

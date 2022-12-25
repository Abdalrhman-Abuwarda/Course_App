import 'package:flutter/material.dart';
import 'package:hw3/resources/assetsManager.dart';
import 'package:hw3/resources/colorsManager.dart';
import 'package:hw3/resources/valuesManager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw3/routing/navigations.dart';
import 'package:hw3/routing/router.dart';
import 'package:hw3/ui/shared/customTextFeild.dart';
import 'package:hw3/ui/shared/footerPage.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p30.w),
          child: Column(
            children: [
              addVerticalSpace(AppSize.s150.h),
              Image.asset(ImageAssets.splashLogo,
                height: AppSize.s95.h,
                width: AppSize.s277.w,),
              addVerticalSpace(AppSize.s50.h),
              const CustomTextField(hintText: 'First Name', prefixIcon: Icon(Icons.person_outline),),
              addVerticalSpace(AppSize.s10.h),
              const CustomTextField(hintText: 'Last Name', prefixIcon: Icon(Icons.person_outline),),
              addVerticalSpace(AppSize.s10.h),
              const CustomTextField(hintText: 'Email Address', prefixIcon: Icon(Icons.email_outlined),),
              addVerticalSpace(AppSize.s10.h),
              const CustomTextField(hintText: 'Password', prefixIcon: Icon(Icons.lock_outline),),
              addVerticalSpace(AppSize.s10.h),
              ElevatedButton(onPressed: (){}, child: const Text("REGESTER", style: TextStyle(color: ColorManager.primaryFontColor),)),
              addVerticalSpace(AppSize.s100.h),
              FooterPage(
                mainText: "Already have an account?",
                textButton: "Login Now",
                onPressed: (){ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.loginPage);},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw3/routing/navigations.dart';
import 'package:hw3/routing/router.dart';

import '../../../resources/valuesManager.dart';
import '../../shared/customTextFeild.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.s60.h,
        title: const Text("Change password"),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p30.w),
          child: Form(
            child: Column(
              children: [
                addVerticalSpace(AppSize.s60.h),
                Text("Enter your new password below", style: Theme.of(context).textTheme.subtitle2,),
                addVerticalSpace(AppSize.s50.h),
                const CustomTextField(hintText: "Current Password", prefixIcon: Icon(Icons.lock_outline)),
                addVerticalSpace(AppSize.s10.h),
                const CustomTextField(hintText: "New Password", prefixIcon: Icon(Icons.lock_outlined)),
                addVerticalSpace(AppSize.s10.h),
                const CustomTextField(hintText: "Confirm New Password", prefixIcon: Icon(Icons.lock_outlined)),
                addVerticalSpace(AppSize.s10.h),
                ElevatedButton(onPressed: (){ServiceNavigations.serviceNavi.pushNamedReplacement(RouteGenerator.loginPage);},
                    child: const Text("Save"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

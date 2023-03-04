import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/model/freeCoursesModel.dart';
import '../../core/model/paidCousesModel.dart';
import '../../resources/assetsManager.dart';
import '../../resources/colorsManager.dart';
import '../../resources/valuesManager.dart';
import '../shared/customListTile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<FreeCoursesModel> freeList = FreeCoursesModel.listFreeCourses;
  final List<PaidCoursesModel> paidList = PaidCoursesModel.listPaidCourses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  addVerticalSpace(AppSize.s80.h),
                  Image.asset(ImageAssets.profileImage),
                  addVerticalSpace(AppSize.s15.h),
                  Text("Rachelle D. Michael" , style: Theme.of(context).textTheme.headline2,)
                ],
              ),
            ),
            addVerticalSpace(AppSize.s45.h),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'Home', svgPath: SvgAssets.homeIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'Course', svgPath: SvgAssets.courseIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'News', svgPath: SvgAssets.newsIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'Products', svgPath: SvgAssets.productIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'Cart', svgPath: SvgAssets.cartIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'My Profile', svgPath: SvgAssets.profileIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'Settings', svgPath: SvgAssets.settingsIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
            CustomListTile(title: 'Logout', svgPath: SvgAssets.logoutIcon,),
            const Divider(
              color: ColorManager.secondaryFontColor,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: AppPadding.p15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(AppSize.s22.h),
              Row(
                children: [
                  Text(
                    "Checkout Our Demos",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: AppSize.s15,
                        color: ColorManager.secondaryFontColor,
                      ))
                ],
              ),
              // addVerticalSpace(AppSize.s5.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(ImageAssets.pannerImage),
                    Image.asset(ImageAssets.pannerImage),
                  ],
                ),
              ),
              // addVerticalSpace(AppSize.s30.h),
              Row(
                children: [
                  Text(
                    "Our Free Courses",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: AppSize.s15,
                        color: ColorManager.secondaryFontColor,
                      ))
                ],
              ),
              SizedBox(
                height: 140.h,
                child: ListView.builder(
                  // shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                    itemCount: freeList.length,
                    itemBuilder: (context, index) => Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s15.r),
                          ),
                          child: Column(
                            children: [
                              Image.asset(freeList[index].imagePath),
                              addVerticalSpace(AppSize.s15.h),
                              SizedBox(
                                  height: AppSize.s45.h,
                                  width: AppSize.s88.h,
                                  child: Text(
                                    freeList[index].title,
                                    style: Theme.of(context).textTheme.subtitle1,
                                  )),
                            ],
                          ),
                        )),
              ),

              addVerticalSpace(AppSize.s30.h),
              Row(
                children: [
                  Text(
                    "Our Paid Courses",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: AppSize.s15,
                        color: ColorManager.secondaryFontColor,
                      ))
                ],
              ),

              SizedBox(
                height: 140.h,
                child: ListView.builder(
                  // shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: paidList.length,
                    itemBuilder: (context, index) => Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s15.r),
                      ),
                      child: Column(
                        children: [
                          Image.asset(paidList[index].imagePath),
                          addVerticalSpace(AppSize.s15.h),
                          SizedBox(
                              height: AppSize.s45.h,
                              width: AppSize.s100.h,
                              child: Text(
                                paidList[index].title,
                                style: Theme.of(context).textTheme.subtitle1,
                              )),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


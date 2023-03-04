import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw3/resources/valuesManager.dart';

import 'colorsManager.dart';

class ThemeManager {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
        primaryColor: ColorManager.mainColor,

        scaffoldBackgroundColor: ColorManager.whiteColor,
        fontFamily: 'Segoe UI', //3
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: ColorManager.blueColor,
        ),
        appBarTheme:  AppBarTheme(
            backgroundColor: ColorManager.mainButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(AppSize.s15.r),
              ),
            ),
            toolbarHeight: AppSize.s60.h,
            elevation: 0,
            iconTheme: const IconThemeData(
              size: AppSize.s25,
              color: ColorManager.primaryFontColor,
            ),
            centerTitle: true,
            // titleSpacing: 30,
            actionsIconTheme: const IconThemeData(
              size: AppSize.s25,
              color: Color(0xFF151617),
            ),
            titleTextStyle: const TextStyle(fontSize: 22, color: Colors.black)
        ),
      textTheme:   TextTheme(
        headline1: TextStyle(fontSize: 30.sp, fontFamily: 'Segoe UI',fontWeight: FontWeight.w600, color: ColorManager.primaryFontColor),
        headline2: TextStyle(fontSize: 22.0.sp, fontWeight: FontWeight.bold, color: ColorManager.primaryFontColor),
        headline3: TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.bold, color: ColorManager.primaryFontColor),
        subtitle1: TextStyle(fontSize: 16.sp,fontFamily: 'Segoe UI', fontWeight: FontWeight.bold, color: ColorManager.textButtonColor),
        subtitle2: TextStyle(fontSize: 20.sp,fontFamily: 'Segoe UI', fontWeight: FontWeight.normal, color: ColorManager.secondaryFontColor),
        bodyText2: TextStyle(fontSize: 13.0.sp,fontFamily: 'Segoe UI', fontWeight: FontWeight.normal, color: ColorManager.secondaryFontColor ),
        bodyText1: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.bold, color: ColorManager.secondaryFontColor ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.mainButtonColor,
          disabledBackgroundColor: ColorManager.blueColor.withOpacity(0.4),
          disabledForegroundColor: ColorManager.whiteColor,
          textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: ColorManager.primaryFontColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s30.r),
          ),
          minimumSize: Size(double.infinity, AppSize.s55.h)
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.whiteColor,
        contentPadding: EdgeInsets.symmetric(vertical: AppPadding.p20.h, horizontal: AppPadding.p10.w),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s30.r),
            borderSide: const BorderSide(
              color: ColorManager.mainBorderColor
            )
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s30.r),
            borderSide: const BorderSide(
                color: ColorManager.mainBorderColor
            )
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s30.r)),
          borderSide: const BorderSide(
            color: ColorManager.redColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s30.r)),
          borderSide: const BorderSide(
            color: ColorManager.foucasBorderColor,
            width: 2,
          ),
        ),
      )
    );
  }
}
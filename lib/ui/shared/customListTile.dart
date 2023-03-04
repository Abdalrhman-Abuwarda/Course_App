import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/assetsManager.dart';
import '../../../resources/valuesManager.dart';

class CustomListTile extends StatelessWidget {
   CustomListTile({
    required this.title,
     required this.svgPath,
  }) ;

  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p40.w),
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        leading: SvgPicture.asset(svgPath),
        title: Text(title),),
    );
  }
}

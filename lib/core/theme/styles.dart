import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Wieght = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF242424),
  );

  static TextStyle font32mainBlue700Wieght = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13TextGrayNormal = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.textGray,
  );

  static TextStyle font16mainBlueBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

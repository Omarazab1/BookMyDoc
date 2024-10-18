
import 'package:bookmydoc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle textStyle24Black700 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  static TextStyle textStyle32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
  );
  static TextStyle textStyle12GreyParagraph = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.kParagraphColor,
  );
  static TextStyle textStyle16button= TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle textStyle24blue= TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.kPrimaryColor,
  );
  static TextStyle textStyle14LightGreyRegular= TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.kLightGreyColor,
  );
  static TextStyle textStyle14DarkBlueMedium= TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.kDarkBlueColor,
  );
  static TextStyle textStyle12blue= TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.kPrimaryColor,
  );
  static TextStyle textStyle12DarkBlue= TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.kDarkBlueColor,
  );
  static TextStyle nameStyle18= TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.kDarkBlueColor,
  );

  static TextStyle textStyle13White= TextStyle(
     fontSize: 13.sp,
     fontWeight: FontWeightHelper.medium,
     color: Colors.white,
  );
}
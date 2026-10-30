import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle PlayfairDisplay700PrimaryColor16 = TextStyle(
    fontSize: 16.sp,
    fontFamily: "PlayfairDisplay",
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );

  static TextStyle Poppins400GreyColor13 = TextStyle(
    fontSize: 13.sp,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static TextStyle Poppins600WhiteColor15 = TextStyle(
    fontSize: 15.sp,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}

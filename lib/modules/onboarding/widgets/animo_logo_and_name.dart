import 'package:animooo/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class AnimoLogoAndName extends StatelessWidget {
  const AnimoLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppAssets.animoLogo, width: 32.0.w, height: 32.0.h),
        SizedBox(width: 8.0.w),
        Text(
          AppStrings.appName,
          style: AppStyles.PlayfairDisplay700PrimaryColor16,
        ),
      ],
    );
  }
}

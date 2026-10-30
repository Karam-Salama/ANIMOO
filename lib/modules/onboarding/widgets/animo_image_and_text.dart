import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_assets.dart';

class OnboardingImagesSection extends StatelessWidget {
  const OnboardingImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: SvgPicture.asset(
            AppAssets.onboardingImage1,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 12.0.w),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AppAssets.onboardingImage2,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 8.0.h),
              SvgPicture.asset(
                AppAssets.onboardingImage3,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

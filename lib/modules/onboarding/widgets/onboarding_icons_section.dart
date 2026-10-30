import 'package:animooo/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingIconsSection extends StatelessWidget {
  const OnboardingIconsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      height: 74.0.h,
      AppAssets.onboardingIcons,
    );
  }
}

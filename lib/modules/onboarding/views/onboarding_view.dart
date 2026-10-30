import 'package:animooo/core/helpers/extensions.dart';
import 'package:animooo/modules/onboarding/widgets/already_have_an_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routes/routes.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/widgets/custom_btn.dart';
import '../widgets/animo_image_and_text.dart';
import '../widgets/animo_logo_and_name.dart';
import '../widgets/onboarding_icons_section.dart';
import '../widgets/onboarding_text_section.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimoLogoAndName(),
                SizedBox(height: 20.0.h),
                OnboardingImagesSection(),
                SizedBox(height: 20.0.h),
                OnboardingTextSection(),
                SizedBox(height: 20.0.h),
                OnboardingIconsSection(),
                SizedBox(height: 40.0.h),
                CustomButton(
                  text: "Get Started",
                  style: AppStyles.Poppins600WhiteColor15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  onPressed: () {
                    context.pushReplacementNamed(Routes.register);
                  },
                ),
                SizedBox(height: 20.0.h),
                AlreadyHaveAnAccountText(),
                SizedBox(height: 20.0.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

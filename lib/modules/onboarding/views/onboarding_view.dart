import 'package:animooo/core/widgets/already_have_an_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routes/routes.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../functions/onboarding.dart';
import '../widgets/animo_image_and_text.dart';
import '../widgets/animo_logo_and_name.dart';
import '../widgets/custom_onboarding_button.dart';
import '../widgets/onboarding_icons_section.dart';
import '../widgets/onboarding_text_section.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 16.0.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: verticalSpace(10.0)),
              const SliverToBoxAdapter(child: AnimoLogoAndName()),
              SliverToBoxAdapter(child: verticalSpace(20.0)),
              const SliverToBoxAdapter(child: OnboardingImagesSection()),
              SliverToBoxAdapter(child: verticalSpace(40.0)),
              const SliverToBoxAdapter(child: OnboardingTextSection()),
              SliverToBoxAdapter(child: verticalSpace(40.0)),
              const SliverToBoxAdapter(child: OnboardingIconsSection()),
              SliverToBoxAdapter(child: verticalSpace(40.0)),
              SliverToBoxAdapter(child: CustomOnboardingButton()),
              SliverToBoxAdapter(child: verticalSpace(20.0)),
              SliverToBoxAdapter(
                child: HaveAnAccountText(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                  onPressed: () {
                    onBoardingCompleted(context, nextRoute: Routes.login);
                  },
                ),
              ),
              SliverToBoxAdapter(child: verticalSpace(60.0)),
            ],
          ),
        ),
      ),
    );
  }
}

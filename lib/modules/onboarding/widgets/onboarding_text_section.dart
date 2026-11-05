import 'package:animooo/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_strings.dart';

class OnboardingTextSection extends StatelessWidget {
  const OnboardingTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.onboardingTitle,
          textAlign: TextAlign.center,
          style: AppStyles.PlayfairDisplay700PrimaryColor16.copyWith(
            fontSize: 28.0,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          AppStrings.onboardingSubtitle,
          style: AppStyles.Poppins400GreyColor13,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

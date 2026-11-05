import 'package:flutter/material.dart';

import '../../../core/routes/routes.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/widgets/custom_btn.dart';
import '../functions/onboarding.dart';

class CustomOnboardingButton extends StatelessWidget {
  const CustomOnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: AppStrings.getStarted,
      style: AppStyles.Poppins600WhiteColor15,
      mainAxisAlignment: MainAxisAlignment.center,
      onPressed: () {
        onBoardingCompleted(context, nextRoute: Routes.register);
      },
    );
  }
}

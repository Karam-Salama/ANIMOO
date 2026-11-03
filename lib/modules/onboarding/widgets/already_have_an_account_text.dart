import 'package:animooo/core/helpers/extensions.dart';
import 'package:animooo/core/routes/routes.dart';
import 'package:animooo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/databases/cache/cache_helper.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/app_styles.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: AppStyles.Poppins400GreyColor13,
        ),
        GestureDetector(
          onTap: () {
            getIt<CacheHelper>()
                .saveData(key: "isOnboardingVisted", value: true);
            context.pushReplacementNamed(Routes.login);
          },
          child: Text(
            "Sign In",
            style: AppStyles.Poppins400GreyColor13.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

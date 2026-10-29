import 'package:flutter/material.dart';

import '../../../core/utils/app_styles.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Onboarding View',
          style: AppStyles.originalSurfer400whiteColor36,
        ),
      ),
    );
  }
}

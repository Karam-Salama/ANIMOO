import 'package:animooo/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../modules/onboarding/views/onboarding_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
    }
  }
}

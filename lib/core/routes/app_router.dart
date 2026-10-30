import 'package:animooo/core/routes/routes.dart';
import 'package:animooo/modules/register/views/register_view.dart';
import 'package:flutter/material.dart';

import '../../modules/login/views/login_view.dart';
import '../../modules/onboarding/views/onboarding_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
    }
  }
}

import 'package:animooo/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../../modules/onboarding/views/onboarding_view.dart';
import '../../modules/splash/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const OnboardingView(),
    ),
  ],
);

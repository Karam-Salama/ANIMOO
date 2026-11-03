import 'package:animooo/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/databases/cache/cache_helper.dart';
import '../../../core/services/service_locator.dart';

void onBoardingCompleted(BuildContext context, {required String nextRoute}) {
  getIt<CacheHelper>().saveData(key: "isOnboardingVisted", value: true);
  context.pushReplacementNamed(nextRoute);
}

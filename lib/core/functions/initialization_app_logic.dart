import 'package:animooo/core/databases/cache/cache_helper.dart';
import 'package:animooo/core/routes/routes.dart';
import 'package:animooo/core/services/service_locator.dart';

Future<String> initializationLogic() async {
  await getIt<CacheHelper>().init();
  bool isOnboardingVisited =
      getIt<CacheHelper>().getData(key: "isOnboardingVisted") ?? false;
  if (isOnboardingVisited == true) {
    return Routes.login;
  } else {
    return Routes.onboarding;
  }
}

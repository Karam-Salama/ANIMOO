import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';
import 'core/utils/app_strings.dart';

class Animoo extends StatelessWidget {
  final AppRouter appRouter;
  const Animoo({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        child: MaterialApp(
          title: AppStrings.appName,
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: Routes.onboarding,
          debugShowCheckedModeBanner: false,
        ));
  }
}

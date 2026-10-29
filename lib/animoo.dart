import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_router.dart';
import 'core/utils/app_strings.dart';

class Animoo extends StatelessWidget {
  const Animoo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        minTextAdapt: true,
        child: MaterialApp(
          title: AppStrings.appName,
          // routerConfig: router,
          debugShowCheckedModeBanner: false,
        ));
  }
}

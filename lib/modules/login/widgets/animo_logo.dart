import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/utils/app_assets.dart';

class AnimoLogo extends StatelessWidget {
  const AnimoLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.authLogo),
        verticalSpace(20.0),
        SvgPicture.asset(AppAssets.loginIcon),
        verticalSpace(20.0),
      ],
    );
  }
}

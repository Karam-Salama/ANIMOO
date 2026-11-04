import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/helpers/spacing.dart';
import '../utils/app_assets.dart';

class AuthHeaderSectionWidget extends StatelessWidget {
  const AuthHeaderSectionWidget({super.key, required this.logoPath});
  final String logoPath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.authLogo),
        verticalSpace(20.0),
        SvgPicture.asset(logoPath),
      ],
    );
  }
}

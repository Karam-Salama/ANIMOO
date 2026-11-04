import 'package:animooo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class HaveAnAccountText extends StatelessWidget {
  const HaveAnAccountText({
    super.key,
    required this.text1,
    required this.text2,
    required this.onPressed,
  });

  final String text1, text2;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppStyles.Poppins400GreyColor13,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            text2,
            style: AppStyles.Poppins400GreyColor13.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

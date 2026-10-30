// ignore_for_file: must_be_immutable

import 'package:animooo/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.backGroundColor,
    this.borderColor,
    required this.text,
    required this.onPressed,
    required this.style,
    required this.mainAxisAlignment,
    this.padding,
    this.imageIcon,
  });

  final Color? backGroundColor;
  final Color? borderColor;
  final String? text;
  final VoidCallback? onPressed;
  final String? imageIcon;
  TextStyle? style;
  MainAxisAlignment mainAxisAlignment;
  double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: SizedBox(
        width: double.infinity,
        height: AppConstants.kHeightBottom,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backGroundColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.kRaduisBorder),
              side: BorderSide(color: borderColor ?? Colors.transparent),
            ),
          ),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              if (imageIcon != null) ...[
                SvgPicture.asset(imageIcon!),
                const SizedBox(width: 53),
              ],
              Text(
                text!,
                style: style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

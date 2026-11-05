import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/functions/validation.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/widgets/custom_btn.dart';
import '../../../core/widgets/cutom_text_form_field_widget_.dart';
import 'image_picker_widget.dart';

class CustomRegisterForm extends StatelessWidget {
  const CustomRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: AppStrings.firstName,
            keyboardType: TextInputType.name,
            onSaved: (name) {},
            validator: Validation.validateName,
          ),
          verticalSpace(16.0),
          CustomTextFormField(
            hintText: AppStrings.lastName,
            keyboardType: TextInputType.name,
            onSaved: (lastName) {},
            validator: Validation.validateName,
          ),
          verticalSpace(16.0),
          CustomTextFormField(
            hintText: AppStrings.Email,
            keyboardType: TextInputType.emailAddress,
            onChanged: (email) {},
            validator: Validation.validateEmail,
          ),
          verticalSpace(16.0),
          CustomTextFormField(
            hintText: AppStrings.phone,
            keyboardType: TextInputType.phone,
            onChanged: (phone) {},
            validator: Validation.validatePhone,
          ),
          verticalSpace(16.0),
          CustomTextFormField(
            hintText: AppStrings.password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: Validation.validatePassword,
            suffixIcon: IconButton(
              icon: SvgPicture.asset(AppAssets.eyeIcon),
              onPressed: () {},
            ),
            onSaved: (password) {},
          ),
          verticalSpace(16.0),
          ImagePickerWidget(),
          verticalSpace(60.0),
          CustomButton(
            text: AppStrings.signUp,
            style: AppStyles.Poppins400GreyColor13.copyWith(
              color: AppColors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
            mainAxisAlignment: MainAxisAlignment.center,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:animooo/core/helpers/extensions.dart';
import 'package:animooo/core/widgets/auth_header_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/routes/routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/already_have_an_account_text.dart';

import '../widgets/custom_register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 16.0.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: verticalSpace(40.0.h)),
              SliverToBoxAdapter(
                child:
                    AuthHeaderSectionWidget(logoPath: AppAssets.registerIcon),
              ),
              SliverToBoxAdapter(child: verticalSpace(60.0)),
              SliverToBoxAdapter(child: CustomRegisterForm()),
              SliverToBoxAdapter(child: verticalSpace(60.0)),
              SliverToBoxAdapter(
                child: HaveAnAccountText(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                  onPressed: () {
                    context.pushReplacementNamed(Routes.login);
                  },
                ),
              ),
              SliverToBoxAdapter(child: verticalSpace(60.0)),
            ],
          ),
        ),
      ),
    );
  }
}

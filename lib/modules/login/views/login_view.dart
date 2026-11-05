import 'package:animooo/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/routes/routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/auth_header_section_widget.dart';
import '../../../core/widgets/already_have_an_account_text.dart';
import '../widgets/custom_login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: verticalSpace(40.0)),
              SliverToBoxAdapter(
                child: AuthHeaderSectionWidget(logoPath: AppAssets.loginIcon),
              ),
              SliverToBoxAdapter(child: verticalSpace(60.0)),
              SliverToBoxAdapter(child: CustomLoginForm()),
              SliverToBoxAdapter(child: verticalSpace(60.0)),
              SliverToBoxAdapter(
                  child: HaveAnAccountText(
                text1: AppStrings.dontHaveAnAccount,
                text2: AppStrings.signUp,
                onPressed: () {
                  context.pushReplacementNamed(Routes.register);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}

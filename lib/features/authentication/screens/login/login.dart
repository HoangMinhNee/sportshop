import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/styles/spacing_styles.dart';
import 'package:sportshop/common/widgets/login_signup/form_divider.dart';
import 'package:sportshop/common/widgets/login_signup/social_buttons.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              const LoginForm(),

              /// divider
              MFormDivider(
                dividerText: MTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: MSizes.spaceBtwItems),

              /// Footer
              const MSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

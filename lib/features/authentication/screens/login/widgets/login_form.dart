import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/features/authentication/screens/password_configuration/forgert_password.dart';
import 'package:sportshop/features/authentication/screens/signup/signup.dart';
import 'package:sportshop/navigation_menu.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: MTexts.email,
            ),
          ),
          const SizedBox(height: MSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: MTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: MSizes.spaceBtwInputFields),

          ///Remember Me, Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MTexts.rememberMe)
                ],
              ),

              ///Forget Password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(MTexts.forgetPassword)),
            ],
          ),
          const SizedBox(height: MSizes.spaceBtwSections),

          /// Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(MTexts.signIn),
            ),
          ),
          const SizedBox(height: MSizes.spaceBtwItems),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignUpScreen()),
              child: const Text(MTexts.createAccount),
            ),
          ),
          const SizedBox(height: MSizes.spaceBtwSections),
        ],
      ),
    );
  }
}

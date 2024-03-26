import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/features/authentication/controllers/login/login_controller.dart';
import 'package:sportshop/features/authentication/screens/password_configuration/forgert_password.dart';
import 'package:sportshop/features/authentication/screens/signup/signup.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';
import 'package:sportshop/utils/validator/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MSizes.spaceBtwSections),
        child: Column(
          children: [
            //* Email
            TextFormField(
              controller: controller.email,
              validator: (value) => MValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MTexts.email,
              ),
            ),
            const SizedBox(height: MSizes.spaceBtwInputFields),

            //* Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) =>
                    MValidator.validateEmptyText('Mật khẩu', value),
                obscureText: controller.hidePasswork.value,
                decoration: InputDecoration(
                  labelText: MTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePasswork.value =
                        !controller.hidePasswork.value,
                    icon: Icon(controller.hidePasswork.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
              ),
            ),

            const SizedBox(height: MSizes.spaceBtwInputFields / 2),

            //* Remember Me, Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //* Remember Me
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value),
                    ),
                    const Text(MTexts.rememberMe)
                  ],
                ),

                //* Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(MTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: MSizes.spaceBtwSections),

            //* Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(MTexts.signIn),
              ),
            ),
            const SizedBox(height: MSizes.spaceBtwItems),

            //* Create Account Button
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
      ),
    );
  }
}

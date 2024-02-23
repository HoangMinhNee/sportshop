import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/features/authentication/screens/signup/verify_email.dart';
import 'package:sportshop/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';

class MSignupForm extends StatelessWidget {
  const MSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: MSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwInputFields),

        // Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: MTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: MSizes.spaceBtwInputFields),

        // Email
        TextFormField(
          decoration: const InputDecoration(
              labelText: MTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: MSizes.spaceBtwInputFields),

        // Phone
        TextFormField(
          decoration: const InputDecoration(
              labelText: MTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: MSizes.spaceBtwInputFields),

        // Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: MTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: MSizes.spaceBtwInputFields),

        // Terms&Conditions Checkbox
        const MTermsAndConditionsCheckbox(),
        const SizedBox(height: MSizes.spaceBtwSections),

        // Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            child: const Text(MTexts.createAccount),
          ),
        )
      ],
    ));
  }
}

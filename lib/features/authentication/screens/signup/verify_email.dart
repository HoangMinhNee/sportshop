import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/success_screen/success_screen.dart';
import 'package:sportshop/features/authentication/screens/login/login.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(MImages.deliveredEmailIllustration),
                width: MHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              /// Title & subTitle
              Text(
                MTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),
              Text(
                'example@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),
              Text(
                MTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: MImages.staticSuccessIllustration,
                            title: MTexts.yourAccountCreatedTitle,
                            subTitle: MTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(MTexts.tContinue))),
              const SizedBox(height: MSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(MTexts.resendEmail)))
            ],
          ),
        ),
      ),
    );
  }
}

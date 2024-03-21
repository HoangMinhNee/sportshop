import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sportshop/common/styles/spacing_styles.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //* Image
              Lottie.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              //* Title & subTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              //* Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(MTexts.mContinue))),
            ],
          ),
        ),
      ),
    );
  }
}

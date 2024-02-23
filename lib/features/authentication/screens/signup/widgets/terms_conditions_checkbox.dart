import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MTermsAndConditionsCheckbox extends StatelessWidget {
  const MTermsAndConditionsCheckbox({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 18,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: MSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${MTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? MColors.white : MColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? MColors.white : MColors.primary,
                      )),
              TextSpan(
                  text: '${MTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MTexts.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? MColors.white : MColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? MColors.white : MColors.primary,
                      )),
            ],
          ),
        ),
      ],
    );
  }
}

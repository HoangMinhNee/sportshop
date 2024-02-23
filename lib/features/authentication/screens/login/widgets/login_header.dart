import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/contants/text_string.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? MImages.lightAppLogo : MImages.darkAppLogo),
        ),
        Text(
          MTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: MSizes.sm),
        Text(
          MTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: MSizes.sm),
      ],
    );
  }
}

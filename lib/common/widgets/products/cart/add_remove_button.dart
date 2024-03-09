import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/icons/circular_icon.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MProductQuantityWithAddRemoveButton extends StatelessWidget {
  const MProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MSizes.md,
          color: MHelperFunctions.isDarkMode(context)
              ? MColors.white
              : MColors.black,
          backgroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkerGrey
              : MColors.light,
        ),
        const SizedBox(width: MSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: MSizes.spaceBtwItems),
        const MCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MSizes.md,
          color: MColors.white,
          backgroundColor: MColors.primary,
        ),
        const SizedBox(width: MSizes.spaceBtwItems),
      ],
    );
  }
}

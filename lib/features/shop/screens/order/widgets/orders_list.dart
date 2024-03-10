import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MOrderListItems extends StatelessWidget {
  const MOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: MSizes.spaceBtwItems),
      itemBuilder: (_, index) => MRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(MSizes.md),
        backgroundColor: dark ? MColors.dark : MColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //* - Icon
                const Icon(Iconsax.truck),
                const SizedBox(width: MSizes.spaceBtwItems / 2),

                //* - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: MColors.primary, fontWeightDelta: 1),
                      ),
                      Text('12-12-2023',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                //* - Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: MSizes.iconSm,
                    ))
              ],
            ),
            const SizedBox(height: MSizes.spaceBtwItems),

            //* -- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //* - Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: MSizes.spaceBtwItems / 2),

                      //* - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#123123]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //* - Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: MSizes.spaceBtwItems / 2),

                      //* - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[12-12-2024]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

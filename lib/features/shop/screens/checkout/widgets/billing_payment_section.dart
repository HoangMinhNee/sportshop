import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MBillingPaymentSection extends StatelessWidget {
  const MBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MSectionHeading(
          title: 'Phương thức thanh toán',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),
        Row(
          children: [
            MRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? MColors.light : MColors.white,
              padding: const EdgeInsets.all(MSizes.sm),
              child: const Image(
                image: AssetImage(MImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: MSizes.spaceBtwItems / 2),
          ],
        )
      ],
    );
  }
}

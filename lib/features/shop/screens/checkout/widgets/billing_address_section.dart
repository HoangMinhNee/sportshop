import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MBillingAddressSection extends StatelessWidget {
  const MBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Hoang Minh', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: MSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: MSizes.spaceBtwItems),
            Text('+84 852-099497',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: MSizes.spaceBtwItems),
            Expanded(
              child: Text(
                '142, Trần Mai Ninh, Tân Bình, TPHCM',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems),
      ],
    );
  }
}

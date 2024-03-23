import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MBillingAmountSection extends StatelessWidget {
  const MBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng tiền hàng',
                style: Theme.of(context).textTheme.bodyMedium),
            Text('9999999đ', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),

        //* Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Phí vận chuyển',
                style: Theme.of(context).textTheme.bodyMedium),
            Text('30000đ', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),

        //* Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Thuế', style: Theme.of(context).textTheme.bodyMedium),
            Text('33333đ', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),

        //* Discount
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Giảm giá', style: Theme.of(context).textTheme.bodyMedium),
            Text('33333đ', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),

        //* Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tổng Cộng', style: Theme.of(context).textTheme.titleLarge),
            Text('33333đ', style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ],
    );
  }
}

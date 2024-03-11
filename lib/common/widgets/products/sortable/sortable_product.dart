import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/layouts/grid_layout.dart';
import 'package:sportshop/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MSortableProducts extends StatelessWidget {
  const MSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: MSizes.spaceBtwSections),
        //* Products
        MGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const MProductCardVertical())
      ],
    );
  }
}

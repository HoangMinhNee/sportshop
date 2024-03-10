import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/products/cart/add_remove_button.dart';
import 'package:sportshop/common/widgets/products/cart/cart_item.dart';
import 'package:sportshop/common/widgets/texts/product_price_text.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class MCartItems extends StatelessWidget {
  const MCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: MSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          //* Cart item
          const MCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: MSizes.spaceBtwItems),

          //* Add remove buttons & product total price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),

                    //* Add Remove Buttons
                    MProductQuantityWithAddRemoveButton(),
                  ],
                ),

                //* Product total price
                MProductPriceText(price: '9.999.999'),
              ],
            ),
        ],
      ),
    );
  }
}

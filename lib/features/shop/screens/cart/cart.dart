import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/products/cart/add_remove_button.dart';
import 'package:sportshop/common/widgets/products/cart/cart_item.dart';
import 'package:sportshop/common/widgets/texts/product_price_text.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
          showBackArrow: true,
          title: Text('Giỏ Hàng',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) =>
                const SizedBox(height: MSizes.spaceBtwSections),
            itemCount: 10,
            itemBuilder: (_, index) => const Column(
                  children: [
                    MCartItem(),
                    SizedBox(height: MSizes.spaceBtwItems),
                    Row(
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
                )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Thanh toán 9.999.999\đ')),
      ),
    );
  }
}

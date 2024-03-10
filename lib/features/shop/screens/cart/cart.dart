import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/products/cart/add_remove_button.dart';
import 'package:sportshop/common/widgets/products/cart/cart_item.dart';
import 'package:sportshop/common/widgets/texts/product_price_text.dart';
import 'package:sportshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:sportshop/features/shop/screens/checkout/checkout.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
          showBackArrow: true,
          title: Text('Giỏ Hàng',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),

          //* -- Items in cart
          child: MCartItems()),

      //* Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Thanh toán 9.999.999\đ')),
      ),
    );
  }
}

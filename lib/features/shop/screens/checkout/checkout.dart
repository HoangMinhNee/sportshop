import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/products/cart/coupon_widget.dart';
import 'package:sportshop/common/widgets/success_screen/success_screen.dart';
import 'package:sportshop/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:sportshop/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:sportshop/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:sportshop/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:sportshop/navigation_menu.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MAppBar(
          showBackArrow: true,
          title: Text('Thanh toán',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              //* -- Items in Cart
              const MCartItems(showAddRemoveButtons: false),
              const SizedBox(height: MSizes.spaceBtwSections),

              //* Coupon TextField
              const MCouponCode(),
              const SizedBox(height: MSizes.spaceBtwSections),

              //* -- Billing Section
              MRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MSizes.md),
                backgroundColor: dark ? MColors.black : MColors.white,
                child: const Column(
                  children: [
                    //* Pricing
                    MBillingAmountSection(),
                    SizedBox(height: MSizes.spaceBtwItems),

                    //* Divider
                    Divider(),
                    SizedBox(height: MSizes.spaceBtwItems),

                    //* Payment Methods
                    MBillingPaymentSection(),
                    SizedBox(height: MSizes.spaceBtwItems),

                    //* Address
                    MBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      //* Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: MImages.successfulPaymentIcon,
                  title: 'Thanh toán thành công!',
                  subTitle: 'Đơn hàng sẽ sớm được vận chuyển đến bạn!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Thanh toán 9.999.999\đ')),
      ),
    );
  }
}

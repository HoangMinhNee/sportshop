import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/icons/circular_icon.dart';
import 'package:sportshop/common/widgets/layouts/grid_layout.dart';
import 'package:sportshop/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:sportshop/features/shop/screens/home/home.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text('Whishlist',
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              MGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const MProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}

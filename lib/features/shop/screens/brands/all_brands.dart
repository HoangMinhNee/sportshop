import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/brands/brand_card.dart';
import 'package:sportshop/common/widgets/layouts/grid_layout.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/features/shop/screens/brands/brand_products.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              //* Heading
              const MSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(height: MSizes.spaceBtwItems),

              //* Brands
              MGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => MBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/brands/brand_card.dart';
import 'package:sportshop/common/widgets/products/sortable/sortable_product.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              //* Brand Detail
              MBrandCard(showBorder: true),
              SizedBox(height: MSizes.spaceBtwSections),

              MSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}

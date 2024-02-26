import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sportshop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  MHomeAppBar(),
                  SizedBox(height: MSizes.spaceBtwSections),

                  /// Seacrhbar
                  MSearchContainer(text: 'Tìm kiếm'),
                  SizedBox(height: MSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

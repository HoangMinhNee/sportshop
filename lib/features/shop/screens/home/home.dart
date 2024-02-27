import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  const MHomeAppBar(),
                  const SizedBox(height: MSizes.spaceBtwSections),

                  /// -- Seacrhbar
                  const MSearchContainer(text: 'Tìm kiếm'),
                  const SizedBox(height: MSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: const EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        MSectionHeading(
                          title: 'Danh mục',
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: MSizes.spaceBtwItems,
                        )
                      ],
                    ),
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

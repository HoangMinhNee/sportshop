import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sportshop/common/widgets/images/circular_image.dart';
import 'package:sportshop/common/widgets/layouts/grid_layout.dart';
import 'package:sportshop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sportshop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/enums.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class StoreSreen extends StatelessWidget {
  const StoreSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MCartCounterIcon(
            onPressed: () {},
            iconColor: MColors.white,
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: MHelperFunctions.isDarkMode(context)
                    ? MColors.black
                    : MColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search bar
                      const SizedBox(height: MSizes.spaceBtwItems),
                      const MSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: MSizes.spaceBtwItems),

                      /// -- Featured Brands
                      MSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: MSizes.spaceBtwItems / 1.5),

                      MGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: MRoundedContainer(
                                padding: const EdgeInsets.all(MSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    /// -- Icon
                                    Flexible(
                                      child: MCircularImage(
                                        isNetworkImage: false,
                                        image: MImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            MHelperFunctions.isDarkMode(context)
                                                ? MColors.white
                                                : MColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                        width: MSizes.spaceBtwItems / 2),

                                    /// --Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const MBrandTitleWithVerifiedIcon(
                                              title: 'Nike',
                                              brandTextSize: TextSizes.large),
                                          Text(
                                            '256 products ',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/appbar/tabbar.dart';
import 'package:sportshop/common/widgets/brands/brand_card.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sportshop/common/widgets/layouts/grid_layout.dart';
import 'package:sportshop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/features/shop/screens/store/widgets/category_tab.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class StoreSreen extends StatelessWidget {
  const StoreSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            MCartCounterIcon(
              onPressed: () {},
              iconColor: MColors.white,
            )
          ],
        ),
        body: NestedScrollView(
          //* -- Header
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  pinned: true,
                  floating: true,
                  expandedHeight: 440,
                  automaticallyImplyLeading: false,
                  backgroundColor: MHelperFunctions.isDarkMode(context)
                      ? MColors.black
                      : MColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(MSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //* -- Search bar
                        const SizedBox(height: MSizes.spaceBtwItems),
                        const MSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: MSizes.spaceBtwSections),

                        //* -- Featured Brands
                        MSectionHeading(
                            title: 'Featured Brands', onPressed: () {}),
                        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

                        //* -- Brands GRID
                        MGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const MBrandCard(showBorder: false);
                            })
                      ],
                    ),
                  ),

                  //* Tabs
                  bottom: const MTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ))
            ];
          },
          body: const TabBarView(
            children: [
              MCategoryTab(),
              MCategoryTab(),
              MCategoryTab(),
              MCategoryTab(),
              MCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

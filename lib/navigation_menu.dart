import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/features/personalization/screens/settings/settings.dart';
import 'package:sportshop/features/shop/screens/home/home.dart';
import 'package:sportshop/features/shop/screens/store/store.dart';
import 'package:sportshop/features/shop/screens/wishlist/wishlist.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? MColors.dark : Colors.white,
          indicatorColor: darkMode
              ? MColors.white.withOpacity(0.1)
              : MColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home), label: 'Trang Chủ '),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: 'Yêu Thích'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Tài Khoản'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreSreen(),
    const FavouriteScreen(),
    const SettingScreen()
  ];
}

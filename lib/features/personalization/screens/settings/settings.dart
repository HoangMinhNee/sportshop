import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sportshop/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:sportshop/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/data/repositories/authentication/authentication_repository.dart';
import 'package:sportshop/features/personalization/screens/address/address.dart';
import 'package:sportshop/features/personalization/screens/profile/profile.dart';
import 'package:sportshop/features/shop/screens/cart/cart.dart';
import 'package:sportshop/features/shop/screens/order/order.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* -- Header
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  //* Appbar
                  MAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: MColors.white))),

                  //* User Profile Card
                  MUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: MSizes.spaceBtwSections),
                ],
              ),
            ),
            //* Body
            Padding(
              padding: const EdgeInsets.all(MSizes.defaultSpace),
              child: Column(
                children: [
                  //* -- Account Settings
                  const MSectionHeading(
                      title: 'Cài Đặt Tài Khoản', showActionButton: false),
                  const SizedBox(height: MSizes.spaceBtwItems),

                  MSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Địa Chỉ',
                    subTitle: 'Đặt địa chỉ giao hàng',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'Giỏ Hàng',
                    subTitle: 'Thêm, xóa sản phẩm và chuyển sang thanh toán',
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Đơn Hàng',
                    subTitle: 'Đơn hàng đang tiến hành và đã hoàn thành',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Tài Khoản Ngân Hàng',
                    subTitle: 'Chuyển tiền vào tài khoản ngân hàng đã đăng ký',
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Khuyến Mãi',
                    subTitle: 'Danh sách tất cả các mã giảm giá',
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Thông Báo',
                    subTitle: 'Cài đặt thông báo cho các tin nhắn',
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Quyền riêng tư tài khoản',
                    subTitle:
                        'Quản lý dữ liệu sử dụng và tài khoản được kết nối',
                  ),

                  //* App Setting
                  const SizedBox(height: MSizes.spaceBtwItems),
                  const MSectionHeading(
                      title: 'Cài Đặt Ứng Dụng', showActionButton: false),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  const MSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud FireBase',
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Vị trí',
                    subTitle: 'Đặt đề xuất dựa trên vị trí',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Chế độ an toàn',
                    subTitle: 'Kết quả tìm kiếm an toàn cho mọi lứa tuổi',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'Chất lượng hình ảnh HD',
                    subTitle: 'Đặt chất lượng hình ảnh để xem',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //* -- Logout Button
                  const SizedBox(height: MSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () =>
                            AuthenticationRepository.instance.logout(),
                        child: const Text('Đăng Xuất')),
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections * 2.5,
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

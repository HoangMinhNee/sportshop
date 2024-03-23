import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/common/widgets/images/circular_image.dart';
import 'package:sportshop/common/widgets/texts/section_heading.dart';
import 'package:sportshop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:sportshop/utils/contants/image_strings.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        showBackArrow: true,
        title: Text('Hồ sơ'),
      ),
      //* -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              //* Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MCircularImage(
                        image: MImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Thay đổi ảnh đại diện'))
                  ],
                ),
              ),

              //* Details
              const SizedBox(height: MSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MSizes.spaceBtwItems),

              //* Heading profile info
              const MSectionHeading(
                  title: 'Thông Tin Tài Khoản', showActionButton: false),
              const SizedBox(height: MSizes.spaceBtwItems),

              MProfileMenu(onPressed: () {}, title: 'Tên', value: 'Hoang Minh'),
              MProfileMenu(
                  onPressed: () {}, title: 'Username', value: 'hoang_minh'),

              const SizedBox(height: MSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: MSizes.spaceBtwItems),

              //* Heading personal info
              const MSectionHeading(
                  title: 'Thông Tin Cá Nhân', showActionButton: false),
              const SizedBox(height: MSizes.spaceBtwItems),

              MProfileMenu(onPressed: () {}, title: 'User ID', value: '123123'),
              MProfileMenu(
                  onPressed: () {},
                  title: 'Email',
                  value: 'hoangminh@gmail.com'),
              MProfileMenu(
                  onPressed: () {}, title: 'SĐT', value: '+84-852-099497'),
              MProfileMenu(onPressed: () {}, title: 'Giới tính', value: 'Nam'),
              MProfileMenu(
                  onPressed: () {}, title: 'Ngày sinh', value: '28-11-2002'),
              const Divider(),
              const SizedBox(height: MSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

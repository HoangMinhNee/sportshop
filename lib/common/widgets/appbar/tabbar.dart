import 'package:flutter/material.dart';
import 'package:sportshop/utils/contants/colors.dart';
import 'package:sportshop/utils/device/device_utility.dart';
import 'package:sportshop/utils/helpers/helper_functions.dart';

class MTabBar extends StatelessWidget implements PreferredSizeWidget {
  //* if you want to add the background color to tabs you have to wrap them in Material widget
  //* to do that we need [PreferredSized] Widget and that's why create custom class. [PreferredSizeWidget]
  const MTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MColors.black : MColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.center,
        indicatorColor: MColors.primary,
        labelColor: dark ? MColors.white : MColors.primary,
        unselectedLabelColor: MColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}

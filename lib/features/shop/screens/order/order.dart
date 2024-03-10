import 'package:flutter/material.dart';
import 'package:sportshop/common/widgets/appbar/appbar.dart';
import 'package:sportshop/features/shop/screens/order/widgets/orders_list.dart';
import 'package:sportshop/utils/contants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Appbar
      appBar: MAppBar(
        title:
            Text('Đơn hàng', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(MSizes.defaultSpace),

        //* Order
        child: MOrderListItems(),
      ),
    );
  }
}

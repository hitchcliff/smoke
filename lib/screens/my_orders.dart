import 'package:flutter/material.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/card/card_container.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/features/shop/order/order_item.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';
import 'package:smoke/utils/helpers/helpers.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelpers.isDarkMode(context);
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: TitleText("My Orders"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 4,
              separatorBuilder: (context, index) => const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              itemBuilder: (context, index) => CardContainer(
                color: isDark ? MyColors.black : MyColors.lightGrey,
                child: const Column(children: [OrderItem()]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

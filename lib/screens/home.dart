import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/cart_counter_icon.dart';
import 'package:single_store_ecommerce/components/home_appbar.dart';
import 'package:single_store_ecommerce/components/my_app_bar.dart';
import 'package:single_store_ecommerce/components/header_wrapper.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HomeAppbar(),
            ],
          ),
        ),
      ),
    );
  }
}

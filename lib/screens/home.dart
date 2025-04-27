import 'package:flutter/material.dart';
import 'package:smoke/features/shop/home/home_header.dart';
import 'package:smoke/features/shop/home/home_products.dart';
import 'package:smoke/features/shop/home/home_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              HomeSlider(),
              HomeProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

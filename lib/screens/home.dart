import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/home_appbar.dart';

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
              // app bar
              HomeAppbar(),
            ],
          ),
        ),
      ),
    );
  }
}

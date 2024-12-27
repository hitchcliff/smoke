import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/header_wrapper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderWrapper(height: 300, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

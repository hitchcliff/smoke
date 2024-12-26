import 'package:flutter/material.dart';
import 'package:single_store_ecommerce/components/circular_container.dart';
import 'package:single_store_ecommerce/components/curve_edge_widget.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';

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
              CurveEdgeWidget(
                child: Container(
                  color: MyColors.primary,
                  child: const SizedBox(
                    height: 400,
                    child: Stack(children: [
                      Positioned(
                        top: -150,
                        right: -250,
                        child: CircularContainer(
                          backgroundColor: MyColors.white,
                          opacity: 0.1,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: CircularContainer(
                          backgroundColor: MyColors.white,
                          opacity: 0.1,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

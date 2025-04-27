import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/components/app_bars/my_app_bar.dart';
import 'package:smoke/components/texts/body_text.dart';
import 'package:smoke/components/texts/title_text.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/data/products.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/sizes.dart';

class LoadData extends StatelessWidget {
  const LoadData({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());

    return Scaffold(
      appBar: MyAppBar(
        title: TitleText("Upload data"),
        showBackArrow: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: BodyText(
                    "Upload data",
                    color: MyColors.white,
                  ),
                  onPressed: () {
                    for (var dataOfProduct in dataOfProducts) {
                      print(dataOfProduct);
                      productController.create(dataOfProduct);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

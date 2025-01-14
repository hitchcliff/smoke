import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:single_store_ecommerce/components/bars/my_app_bar.dart';
import 'package:single_store_ecommerce/components/paths/curve_edges.dart';
import 'package:single_store_ecommerce/components/rounded/rounded_image.dart';
import 'package:single_store_ecommerce/utils/constants/colors.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';
import 'package:single_store_ecommerce/utils/constants/sizes.dart';
import 'package:single_store_ecommerce/utils/helpers/helpers.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MyHelpers.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: CurveEdges(),
                child: Container(
                  color: isDarkMode ? MyColors.dark : MyColors.light,
                  child: Stack(
                    children: [
                      // ---# App bar
                      MyAppBar(
                        showBackArrow: true,
                        actions: [
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              FontAwesomeIcons.solidHeart,
                              color: MyColors.heart,
                            ),
                          )
                        ],
                      ),

                      // ---# Product
                      Container(
                        height: 400,
                        padding: const EdgeInsets.all(MySizes.defaultSpace),
                        child: const Image(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            MyImages.productImg1,
                          ),
                        ),
                      ),

                      // ---# Variations
                      Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          physics: const ScrollPhysics(),
                          itemBuilder: (_, index) => Padding(
                            padding: const EdgeInsets.only(
                              left: MySizes.spaceBtwItems,
                            ),
                            child: RoundedImage(
                              color: isDarkMode
                                  ? MyColors.darkGrey
                                  : MyColors.white,
                              onTap: () {},
                              imgUrl: MyImages.productImg2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text("hello"),
            ],
          ),
        ),
      ),
    );
  }
}

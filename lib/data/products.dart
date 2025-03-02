import 'package:single_store_ecommerce/models/product_attribute_model.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/models/product_variation_model.dart';

/// This data is uploaded in firebase
final dataOfProducts = [
  ProductModel(
    id: "3",
    title: "CIGARLOONG Smoking Ashtray 2",
    description:
        "Tobacco Accessories Non-slip Base Custom Clear Glass Crystal Cigar Ashtray",
    isFeatured: true,
    price: 9.7,
    productType: "single",
    salePrice: 0,
    stock: 10,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
    brandId: "1",
    images: [
      "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
    ],
    productAttributes: [
      ProductAttributeModel(name: "Color", values: ["gray", "gold"]),
    ],
    // productVariation: [
    //   ProductVariationModel(
    //     id: "1",
    //     attributeValues: {"Color": "gold"},
    //     image:
    //         "https://sc04.alicdn.com/kf/Hf1f27f6a4afa44d3899796daa53461dfi.jpg",
    //     price: 7,
    //     stock: 5,
    //   ),
    //   ProductVariationModel(
    //     id: "2",
    //     attributeValues: {"Color": "gray"},
    //     image:
    //         "https://sc04.alicdn.com/kf/H9191192815cd48569b45402ad48331c1m.jpg",
    //     price: 6.5,
    //     stock: 5,
    //   ),
    // ]),
  ),
];

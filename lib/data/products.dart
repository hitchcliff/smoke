import 'package:smoke/models/product_attribute_model.dart';
import 'package:smoke/models/product_model.dart';
import 'package:smoke/models/product_variation_model.dart';

/// This data is uploaded in firebase
final dataOfProducts = [
  /// Cigarloong ashtrays
  ProductModel(
      id: "1",
      title: "Fashion Luxury Portable 2 Slot Resin Cigar Ashtrays",
      description:
          "Cigar Accessories Custom Logo Cigar Ashtray for Home Outdoor",
      isFeatured: true,
      price: 3.48,
      productType: "variable",
      salePrice: 2.4,
      stock: 10,
      thumbnail:
          "https://s.alicdn.com/@sc04/kf/H6ef459a5f6f24da1b70f1fba037f0b18r.jpg_720x720q50.jpg",
      brandId: "1",
      categoryId: "1",
      images: [
        "https://s.alicdn.com/@sc04/kf/Hbf0decf8b98a4bfd9a6b87a0d421e8089.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H134efa5a2a4a4062955542bcb587719fo.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H25cf603d0f1643bc916c6854c5c27148Z.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H9a1218bb8e564e97886297f60ce90b5c3.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/Hdcabb834219c4c4bb0004f2e93017fe3q.jpg_720x720q50.jpg",
      ],
      productAttributes: [
        ProductAttributeModel(name: "Color", values: ["white", "red"]),
      ],
      productVariation: [
        ProductVariationModel(
          id: "1",
          attributeValues: {"Color": "white"},
          image:
              "https://sc04.alicdn.com/kf/H7a7393cfefb34d42a540c3911b6e3fc8Q.jpg",
          price: 3.48,
          stock: 5,
          salePrice: 3,
        ),
        ProductVariationModel(
          id: "2",
          attributeValues: {"Color": "red"},
          image:
              "https://sc04.alicdn.com/kf/He0ece2c9036f4a04b63304c5e9d9f9e75.jpg",
          price: 3.4,
          stock: 5,
          salePrice: 3,
        ),
      ]),
  ProductModel(
    id: "2",
    title: "Porcelain Luxury Ash Tray",
    description:
        "Large Ashtray Ceramic Cigar Ashtray Creative Smoking Cigar Ashtray",
    isFeatured: false,
    price: 10.30,
    productType: "single",
    salePrice: 9.47,
    stock: 10,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/H169f0d4fa8944c5880a9b172a4628163k.jpg_720x720q50.jpg",
    brandId: "1",
    categoryId: "1",
    images: [
      "https://s.alicdn.com/@sc04/kf/Hdbe75e8649e34323808fb74f97dc7982i.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hb5e5c815e8e747b0a73d2826c16b7a35x.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H75e4c49c3d1f498893cad36121c950ffB.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H9e17d2e9e6fb4ee095ebdf06249bc831R.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
      id: "3",
      title: "CIGARLOONG Smoking Ashtray 2",
      description:
          "Tobacco Accessories Non-slip Base Custom Clear Glass Crystal Cigar Ashtray",
      isFeatured: false,
      price: 9.7,
      productType: "variable",
      salePrice: 0,
      stock: 10,
      thumbnail:
          "https://s.alicdn.com/@sc04/kf/Ha2ebd0e442ad4036ad5749d82a2863efY.jpg_720x720q50.jpg",
      brandId: "1",
      categoryId: "1",
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
      productVariation: [
        ProductVariationModel(
          id: "1",
          attributeValues: {"Color": "gold"},
          image:
              "https://sc04.alicdn.com/kf/Hf1f27f6a4afa44d3899796daa53461dfi.jpg",
          price: 7,
          stock: 5,
          salePrice: 0,
        ),
        ProductVariationModel(
          id: "2",
          attributeValues: {"Color": "gray"},
          image:
              "https://sc04.alicdn.com/kf/H9191192815cd48569b45402ad48331c1m.jpg",
          price: 6.5,
          stock: 5,
          salePrice: 0,
        ),
      ]),
  ProductModel(
      id: "4",
      title: "Metal Cigar Ashtray",
      description:
          "Chinese and European Design Suitable for Home and Office Cigar Ashtrays, 4-slot ",
      isFeatured: false,
      price: 21.21,
      productType: "variable",
      salePrice: 19.70,
      stock: 10,
      thumbnail:
          "https://s.alicdn.com/@sc04/kf/H307027b5f8e04cbc88ebe88ea0966209n.jpg_720x720q50.jpg",
      brandId: "1",
      categoryId: "1",
      images: [
        "https://s.alicdn.com/@sc04/kf/H0fb7836eed4549cfb62ac1155b9c9d403.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H30c097be461940b382702a441519dd73f.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H32148629421a4737b6c36a182ac7ecf90.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H7ffe17a8e0b94062a221fd2685e4e8c5J.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H7ffe17a8e0b94062a221fd2685e4e8c5J.jpg_720x720q50.jpg",
      ],
      productAttributes: [
        ProductAttributeModel(name: "Color", values: ["black", "silver"]),
      ],
      productVariation: [
        ProductVariationModel(
          id: "1",
          attributeValues: {"Color": "black"},
          image:
              "https://sc04.alicdn.com/kf/H48e890ae9bd943a984bbb3d926c29c78p.jpg",
          price: 21.21,
          salePrice: 18.64,
          stock: 5,
        ),
        ProductVariationModel(
          id: "2",
          attributeValues: {"Color": "silver"},
          image:
              "https://sc04.alicdn.com/kf/H36325fbb425049a39c448958bddf8b267.jpg",
          price: 21.21,
          salePrice: 19.58,
          stock: 5,
        ),
      ]),
  ProductModel(
      id: "5",
      title: "Large Caliber Cigar Ashtray",
      description:
          "Ceramic Extinguisher for 2 Cigars Cigarette Accessory Ashtray",
      isFeatured: false,
      price: 12.10,
      productType: "variable",
      salePrice: 0,
      stock: 10,
      thumbnail:
          "https://s.alicdn.com/@sc04/kf/H555cc7c1b14547f78c01a18b6010943as.jpg_720x720q50.jpg",
      brandId: "1",
      categoryId: "1",
      images: [
        "https://s.alicdn.com/@sc04/kf/H6c8b469a96924625a1038a957ffb8813v.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/Hbe5ae41bacfc4f4b9b55add83f5ba0deh.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H8c85a70a14304bb7bb5651d452fad309g.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H85084f3b95974230a2b952d5abc956aeL.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H152ee2f7569e4931a45a4448b461db47R.jpg_720x720q50.jpg",
      ],
      productAttributes: [
        ProductAttributeModel(name: "Color", values: ["white", "yellow"]),
      ],
      productVariation: [
        ProductVariationModel(
          id: "1",
          attributeValues: {"Color": "white"},
          image:
              "https://sc04.alicdn.com/kf/Hf4642b080b26495bacadc3f342961cb2Q.jpg",
          price: 12.10,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "2",
          attributeValues: {"Color": "yellow"},
          image:
              "https://sc04.alicdn.com/kf/Hc55b222fc6a14705aca24b59b57b28c5Q.jpg",
          price: 11.80,
          salePrice: 0,
          stock: 5,
        ),
      ]),

  /// Eliao Pipes
  ProductModel(
    id: "6",
    title: "Tobacco Grinder Electric Herb Grinder",
    description: "Eliao New Design Alloy",
    isFeatured: true,
    price: 11,
    productType: "single",
    salePrice: 0,
    stock: 5,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/HTB1H6OTbO6guuRjy0Fmq6y0DXXar.jpg_720x720q50.jpg",
    brandId: "2",
    categoryId: "2",
    images: [
      "https://s.alicdn.com/@sc04/kf/HTB1M7BaI79WBuNjSspeq6yz5VXaM.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/HTB1H6OTbO6guuRjy0Fmq6y0DXXar.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/HTB1i9tOIY1YBuNjSszhq6AUsFXaC.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "7",
    title: "Tobacco Pipe Set Free Type Six-Piece",
    description:
        "YiWu Erliao Hot Selling Resin Mirror Frosted Resin Pipe Wholesale Smoking Pipe Set",
    isFeatured: true,
    price: 6.59,
    productType: "single",
    salePrice: 0,
    stock: 10,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Ha8f9ccdcfde04c91aabe3c74db1dbae94.jpg_720x720q50.jpg",
    brandId: "2",
    categoryId: "2",
    images: [
      "https://s.alicdn.com/@sc04/kf/HTB1KttcaInrK1RjSspkq6yuvXXaK.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/HTB1vWlbaPvuK1Rjy0Faq6x2aVXad.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/HTB1S1VXaOzxK1RjSspjq6AS.pXaI.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/HTB12qA_ayDxK1RjSsphq6zHrpXaf.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/HTB1IdtcaInrK1RjSspkq6yuvXXaw.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "8",
    title: "4 Layer Brown Portable Wood Herb",
    description:
        "Grinder 2.5 Inch Dry Spice Crusher New Design Wooden Grinder for Herb",
    isFeatured: false,
    price: 9.75,
    productType: "single",
    salePrice: 0,
    stock: 5,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/H04844964d6d54fe88ca2bbbcc42327e1i.jpg_720x720q50.jpg",
    brandId: "2",
    categoryId: "2",
    images: [
      "https://s.alicdn.com/@sc04/kf/Hdacff4b5d06346aea57c639fd8a49e50q.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H305b3f7b2072456884af05ad489cd1381.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H27b02dd84b104c4180c9ce29037da1d7f.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H54223af44e4a42d583bd3cc020448dacY.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Haebf4393310a4db4aaf53da2b54d85e9b.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "9",
    title: "3 Layer 60mm Plastic Herb Grinder",
    description:
        "Dry Spice Custom Grinder Crusher Transparent Acrylic Tobacco Grinder Herbe",
    isFeatured: false,
    price: 0.75,
    productType: "single",
    salePrice: 0,
    stock: 5,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Hf5c462dd768f475abd1187f9d69c42736.jpg_720x720q50.jpg",
    brandId: "2",
    categoryId: "2",
    images: [
      "https://s.alicdn.com/@sc04/kf/H3daf38708e0a4ce1b6beda3872313153Q.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H0692f5d7bce24e9d81a0b204b7f24c09E.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H9756a82fc277440d8861d6ce233c47cc0.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/He970963c1d584c3db7da870b89fa62997.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Heb63094704a94ec298cc5f8e035b4aa0e.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "10",
    title: "Smoking Pipe Long Tube Tobacco",
    description: "YiWu Eliao Engraved Flowers Creative Design Smoking Pipe",
    isFeatured: false,
    price: 1.45,
    productType: "single",
    salePrice: 1.21,
    stock: 5,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/H330a0d45796c40d786cb44fdb0e24c2bS.jpg_720x720q50.jpg",
    brandId: "2",
    categoryId: "2",
    images: [
      "https://s.alicdn.com/@sc04/kf/H7e3ef665541a482f99750749b21e2592C.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H348821b5c7c74d10a0ab14db5de6cb3c9.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hfbd1cb3439804df7929102e8c42fb5dcS.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H355e1d51c93a4ef89d7ba151a6b0c738f.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hc794bc4af5f5426c952d03559612fa1dx.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),

  /// zhuoye lighters
  ProductModel(
    id: "11",
    title: "Cigar Torch Lighters Fire Feuerzeug",
    description:
        "Cigarettes Gas Lighter Flame Custom Windproof Encendedor Jet Cigar Lighters",
    isFeatured: true,
    price: 0.20,
    productType: "single",
    salePrice: 0.09,
    stock: 20,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Hef092adc3d79486aa1f887ca39332dba6.jpg_720x720q50.jpg",
    brandId: "3",
    categoryId: "3",
    images: [
      "https://s.alicdn.com/@sc04/kf/Hbc766fa873c74d41b1674245d0dceb26g.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H152f1f6225f24dbd9159a50e1b83445cX.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H483cd19ed20e4ffcbc54c03bd5b3ddaer.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H4a52de3f2bd84703bef7e897164242a0a.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hd13730b393d740e1b4e2b251e3e6a757w.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "12",
    title: "Cheap Disposable Flint",
    description: "Cigarette Lighter Customize Logo Flint Lighter",
    isFeatured: true,
    price: 0.26,
    productType: "single",
    salePrice: 0,
    stock: 20,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Hf0612f172d1c42ca8728fa141b3aba286.jpg_720x720q50.jpg",
    brandId: "3",
    categoryId: "3",
    images: [
      "https://s.alicdn.com/@sc04/kf/H5cf469c9358d4adabad7d6d6569983f6x.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hbc32604cf3244a76a03ee2b6d374e96eD.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hb9aee1eedf594f05ade7a48d10146f84q.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H173d23114fdb4bbbb018ea6332a94dee8.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),

  /// boulux
  ProductModel(
      id: "13",
      title: "Kitchen Portable USB Electric Candle Lighter Plasma",
      description: "Arc Lighters Windproof Lighters for Scented Candles",
      isFeatured: true,
      price: 2.63,
      productType: "variable",
      salePrice: 2.49,
      stock: 10,
      thumbnail:
          "https://s.alicdn.com/@sc04/kf/H5922550a249249ef8cf61ab31c903c6es.jpg_720x720q50.jpg",
      brandId: "4",
      categoryId: "4",
      images: [
        "https://s.alicdn.com/@sc04/kf/H93787384dfc441dbb02b4c83630a508bo.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H63183633d3ea4e79b680c16a5bade3469.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H8bc70d7382904c68a829bfef4c910502L.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H836fa7bbfa8542da9e1a91dcc30b1170A.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/Hb49df06cd6cf406b8612b5e51cb145f30.jpg_720x720q50.jpg",
      ],
      productAttributes: [
        ProductAttributeModel(name: "Color", values: ["green", "yellow"]),
      ],
      productVariation: [
        ProductVariationModel(
          id: "1",
          attributeValues: {"Color": "green"},
          image:
              "https://sc04.alicdn.com/kf/H14d5b8cb42874a3a8101678515e8f851f.jpg",
          price: 2.63,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "2",
          attributeValues: {"Color": "yellow"},
          image:
              "https://sc04.alicdn.com/kf/H5d4f33a3b4084bb2afd520bcb66745ebx.jpg",
          price: 2.63,
          salePrice: 0,
          stock: 5,
        ),
      ]),
  ProductModel(
      id: "14",
      title: "Electric ARC BBQ Lighter",
      description:
          "Portable Kitchen Lighter USB Rechargeable Windproof Gas Candle Lighter",
      isFeatured: false,
      price: 3,
      productType: "variable",
      salePrice: 2.90,
      stock: 16,
      thumbnail:
          "https://s.alicdn.com/@sc04/kf/H0e1c5681ee0b41458c45802579a2d433S.jpg_720x720q50.jpg",
      brandId: "4",
      categoryId: "4",
      images: [
        "https://s.alicdn.com/@sc04/kf/Hc2a511d306a24d8999b83f9c2daa9395X.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H2b64389ee1474ae2998594c8f395dd0eF.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/Hf364ff5404b343a6ab2f5fb1c6576e9aR.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/Hc54cae7253d24a678b0982b26d6b26aff.jpg_720x720q50.jpg",
        "https://s.alicdn.com/@sc04/kf/H619b3e97260a4fe3a3b02e1edde3605cM.jpg_720x720q50.jpg",
      ],
      productAttributes: [
        ProductAttributeModel(
            name: "Color",
            values: ["gold", "rose", "red", "black", "silver", "blue"]),
      ],
      productVariation: [
        ProductVariationModel(
          id: "1",
          attributeValues: {"Color": "gold"},
          image:
              "https://sc04.alicdn.com/kf/Hf38bfa29e88e4c819c6c681c3ceee087G.jpg",
          price: 2.90,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "2",
          attributeValues: {"Color": "rose"},
          image:
              "https://sc04.alicdn.com/kf/H0ef093df58e04e38a478574e7b617813e.jpg",
          price: 2.90,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "3",
          attributeValues: {"Color": "black"},
          image:
              "https://sc04.alicdn.com/kf/Hfa34968da3a8493280e5aab5ba592095w.jpg",
          price: 2.90,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "4",
          attributeValues: {"Color": "silver"},
          image:
              "https://sc04.alicdn.com/kf/H3b02f4b2dc97403fbf05a2d8f2526a6aW.jpg",
          price: 2.90,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "5",
          attributeValues: {"Color": "blue"},
          image:
              "https://sc04.alicdn.com/kf/Hb08a5dccb2ed4a22a57f58e3a729a79av.jpg",
          price: 2.90,
          salePrice: 0,
          stock: 5,
        ),
        ProductVariationModel(
          id: "6",
          attributeValues: {"Color": "red"},
          image:
              "https://sc04.alicdn.com/kf/Hc239f8a94a0a47d2901d209a75d3d90bc.jpg",
          price: 2.90,
          salePrice: 0,
          stock: 5,
        ),
      ]),

  /// magic campfire
  ProductModel(
    id: "15",
    title: "Wool Firestarter Fire Lighter",
    description: "Natural Eco-Friendly BBQ Wood",
    isFeatured: true,
    price: 1.90,
    productType: "single",
    salePrice: 0,
    stock: 50,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/H485dd71241ec421dad7c9932563faf9fd.jpg_720x720q50.jpg",
    brandId: "5",
    categoryId: "5",
    images: [
      "https://s.alicdn.com/@sc04/kf/H90be0f44deab4d6aacbaf9b9bd872284U.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H1b2cc9c54da24cde83b49dc06be123a3i.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H6094448fabcd49f5bc87807269a08e1dC.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hafab68b64e884e0ab699195a4ded6c24O.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H71c59233375043bc9101f435e026b6c4F.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),

  /// aciga
  ProductModel(
    id: "16",
    title: "Double Blade Cigar Cutter",
    description:
        "Custom High Quality Drop Raindrop Wooden Material Essential Cigar Accessories Double Blade Cigar Cutter",
    isFeatured: true,
    price: 4.07,
    productType: "single",
    salePrice: 4,
    stock: 30,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Hebcaead7c765410bad612723c5023956Q.jpg_720x720q50.jpg",
    brandId: "6",
    categoryId: "6",
    images: [
      "https://s.alicdn.com/@sc04/kf/Hc574a6e3784642afbc2424c675958656a.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H52b6891615884370bea533c692f09117C.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H1b6c4a52b0ed40c7856797a8f6cc8184n.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H8c1022e0c77c46d980f8fe86b95c8b9dn.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hf157c79ed1ef4effb798f511419ba9f2F.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "17",
    title: "V-shaped Flat Cutting Cigar Cutter",
    description: "Double Blade Cigar Scissor Accessories",
    isFeatured: true,
    price: 0.41,
    productType: "single",
    salePrice: 0.34,
    stock: 20,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/Hb28dbb05fb8a43e5a1554b0fb961ffe7v.png_720x720q50.jpg",
    brandId: "6",
    categoryId: "6",
    images: [
      "https://s.alicdn.com/@sc04/kf/Hb87a3ffedb4349feb4f0a8a946116a0aw.png_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H01ba5b74d3c74e068cbf4c4f764c91cdV.png_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H0a6c55a7855441baa1544fdbc06faa8bw.png_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/He3bca4dfd0c140c8a43bb2b59878db04H.png_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "18",
    title: "16mm Mini Stainless Steel Cigar Cutter",
    description: "Stainless Steel Hole Cutter Folding Cigar Knife Tool",
    isFeatured: true,
    price: 2.79,
    productType: "single",
    salePrice: 2.71,
    stock: 20,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/H63c3295f046741e8a56b3bd362a8d635O.jpg_720x720q50.jpg",
    brandId: "6",
    categoryId: "6",
    images: [
      "https://s.alicdn.com/@sc04/kf/Hb0415ead410049bab8f884b8d294e9e1f.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/Hb45f8392187647e0b8ae7a005e46422eP.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H1fb6b81e05524abba7e4ad45ace7ecb4N.jpg_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H5723596a18144c10a066351cf5b45b58h.jpg_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
  ProductModel(
    id: "19",
    title: "Jamaica Resin Cigar Ashtray",
    description: "Jamaica Style Hand-decorated Personalized Portable Resin",
    isFeatured: true,
    price: 1.60,
    productType: "single",
    salePrice: 1.55,
    stock: 20,
    thumbnail:
        "https://s.alicdn.com/@sc04/kf/H22bea26a8d1947399fc5a42fab702bb26.png_720x720q50.jpg",
    brandId: "6",
    categoryId: "6",
    images: [
      "https://s.alicdn.com/@sc04/kf/H44e958d05e2f4b2291b9b5f6c1f54e73p.png_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H2269b83c64d345a6a8471f6093031fd6e.png_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H6d57c01eb79d4090b328da0a87d7ad124.png_720x720q50.jpg",
      "https://s.alicdn.com/@sc04/kf/H5bd4a92fe60944c0835a96385aa38569F.png_720x720q50.jpg",
    ],
    productAttributes: [],
    productVariation: [],
  ),
];

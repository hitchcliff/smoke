import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:single_store_ecommerce/models/product_attribute_model.dart';
import 'package:single_store_ecommerce/models/product_variation_model.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.productType,
    required this.stock,
    required this.price,
    required this.description,
    required this.salePrice,
    required this.isFeatured,
    this.images,
    this.brandId,
    this.productAttributes,
    this.productVariation,
  });

  // Required Variables
  final String id, title, thumbnail, description, productType;
  final double stock, price, salePrice;
  final bool isFeatured;

  /// Not-required
  final List<String>? images;
  final String? brandId;
  final List<ProductAttributeModel>?
      productAttributes; // {name: "Color", values: ["green", "blue", "red"]}
  final List<ProductVariationModel>?
      productVariation; // {attributeValues: {color: "green"}, price: 0, stock: 0, image: ""}

  /// Empty
  static ProductModel empty() => ProductModel(
        id: '',
        title: '',
        thumbnail: '',
        productType: "",
        stock: 0,
        price: 0,
        description: '',
        salePrice: 0,
        isFeatured: false,
        productAttributes: [],
        productVariation: [],
        images: [],
      );

  /// To JSON, will be used for uploading data to firebase
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      'title': title,
      "description": description,
      "isFeatured": isFeatured,
      'thumbnail': thumbnail,
      'productType': productType,
      'price': price,
      'stock': stock,
      'salePrice': 0,
      'brandId': brandId,
      "images": images,
      "productAttributes": productAttributes?.map((e) => e.toJson()).toList(),
      "productVariation": productVariation?.map((e) => e.toJson()).toList(),
    };
  }

  /// Snapshot
  factory ProductModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      return ProductModel(
        id: document.id,
        title: data['title'],
        thumbnail: data['thumbnail'],
        productType: data['productType'],
        stock: data['stock'],
        price: data['price'],
        description: data['description'],
        salePrice: data['salePrice'],
        isFeatured: data['isFeatured'],
        images: data['images'] != null ? List<String>.from(data['images']) : [],
        brandId: data['brandId'],
        productAttributes: (data['productAttributes'] as List<dynamic>)
            .map((e) => ProductAttributeModel.fromJson(e))
            .toList(),
        productVariation: (data['productVariation'] as List<dynamic>)
            .map((e) => ProductVariationModel.fromJson(e))
            .toList(),
      );
    } else {
      return ProductModel.empty();
    }
  }
}

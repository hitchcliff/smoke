import 'package:cloud_firestore/cloud_firestore.dart';

class BrandModel {
  BrandModel({
    required this.name,
    required this.image,
    required this.totalProducts,
    required this.isFeatured,
    required this.id,
  });

  // Variables
  final String id, name, image;
  final int totalProducts;
  final bool isFeatured;

  /// Empty function
  static BrandModel empty() => BrandModel(
      id: "", name: "", image: '', totalProducts: 0, isFeatured: false);

  /// ToJson
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
      "isFeatured": isFeatured,
      "totalProducts": totalProducts
    };
  }

  /// Convert JSON from firebase to Model
  factory BrandModel.fromJson(Map<String, dynamic> data) {
    if (data.isEmpty) return BrandModel.empty();

    return BrandModel(
      id: data['id'],
      name: data['name'],
      image: data['image'],
      isFeatured: data['isFeatured'],
      totalProducts: data['totalProducts'],
    );
  }

  /// Convert snapshot
  factory BrandModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      return BrandModel(
        id: document.id,
        name: data['name'],
        image: data['image'],
        isFeatured: data['isFeatured'],
        totalProducts: data['totalProducts'],
      );
    } else {
      return BrandModel.empty();
    }
  }
}

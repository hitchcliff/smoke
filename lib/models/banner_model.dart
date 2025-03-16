import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel {
  BannerModel({required this.image, required this.name});

  final String image;
  final String name;

  static BannerModel empty() => BannerModel(image: "", name: "");

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
    };
  }

  factory BannerModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      return BannerModel(
        name: data['name'],
        image: data['image'],
      );
    } else {
      return BannerModel.empty();
    }
  }
}

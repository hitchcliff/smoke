import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  CategoryModel({
    required this.name,
    required this.parentId,
    required this.image,
    required this.isFeatured,
    required String id,
  });

  final String name, parentId, image;
  final bool isFeatured;

  /// Empty function
  static CategoryModel empty() => CategoryModel(
        id: '',
        name: "",
        parentId: "",
        image: "",
        isFeatured: false,
      );

  /// Model to Json
  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "parentId": parentId,
        "isFeatured": isFeatured,
      };

  /// Convert snapshot to model
  // factory is needed to ensure output is not null
  factory CategoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      return CategoryModel(
        id: document.id,
        name: data['name'],
        parentId: data['parentId'],
        image: data['image'],
        isFeatured: data['isFeatured'],
      );
    } else {
      return CategoryModel.empty();
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/models/category_model.dart';
import 'package:single_store_ecommerce/utils/constants/db_collections.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// Read all categories
  Future<List<CategoryModel>> readAllCategories() async {
    try {
      final snapshot = await _db.collection(MyDBCollections.categories).get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();

      return list;
    } catch (e) {
      throw e.toString();
    }
  }
}

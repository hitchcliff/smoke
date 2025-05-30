import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:smoke/models/brand_model.dart';
import 'package:smoke/utils/constants/db_collections.dart';

class BrandRepository extends GetxController {
  static BrandRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Update
  updateBrand(String id) async {
    try {
      // Find the brand
      final collection = _db.collection(MyDBCollections.brands);
      final doc = await collection.doc(id).get();

      if (doc.exists) {
        final BrandModel brand = BrandModel.fromSnapshot(doc);

        Logger().d("Brand $brand");

        await collection
            .doc(id)
            .update({"totalProducts": brand.totalProducts + 1});
      }
    } catch (e) {
      throw e.toString();
    }
  }

  /// Get all banners
  Future<List<BrandModel>> readAll() async {
    try {
      QuerySnapshot snapshot =
          await _db.collection(MyDBCollections.brands).get();

      return snapshot.docs
          .map((doc) => BrandModel.fromSnapshot(
              doc as DocumentSnapshot<Map<String, dynamic>>))
          .toList();
    } catch (e) {
      throw e.toString();
    }
  }
}

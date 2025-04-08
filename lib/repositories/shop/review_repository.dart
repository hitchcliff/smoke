import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/models/review_model.dart';
import 'package:single_store_ecommerce/utils/constants/db_collections.dart';

/// Will talk to the DB
class ReviewRepository extends GetxController {
  static ReviewRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// create review
  create(ReviewModel value) async {
    try {
      final collection = _db.collection(MyDBCollections.reviews);
      await collection.doc().set(value.toJson());
    } catch (e) {
      throw e.toString();
    }
  }
}

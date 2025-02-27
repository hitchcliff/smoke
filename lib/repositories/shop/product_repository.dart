import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/utils/constants/db_collections.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Upload data to db
  upload(ProductModel data) async {
    try {
      await _db
          .collection(MyDBCollections.products)
          .doc(data.id)
          .set(data.toJson());
    } catch (e) {
      throw e.toString();
    }
  }
}

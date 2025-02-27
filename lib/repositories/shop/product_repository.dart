import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/repositories/shop/brand_repository.dart';
import 'package:single_store_ecommerce/utils/constants/db_collections.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Repository
  final BrandRepository _brandRepository = Get.put(BrandRepository());

  /// Upload data to db
  upload(ProductModel data) async {
    try {
      Logger().d("Product ID: ${data.id}");
      await _db
          .collection(MyDBCollections.products)
          .doc(data.id)
          .set(data.toJson());
      await _brandRepository.updateBrand(data.brandId!);
    } catch (e) {
      throw e.toString();
    }
  }
}

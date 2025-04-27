import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:smoke/models/banner_model.dart';
import 'package:smoke/repositories/shop/brand_repository.dart';
import 'package:smoke/utils/constants/db_collections.dart';

class BannerRepository extends GetxController {
  BrandRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<BannerModel>> readAll() async {
    try {
      final QuerySnapshot snapshot =
          await _db.collection(MyDBCollections.banners).get();

      return snapshot.docs
          .map((doc) => BannerModel.fromSnapshot(
              doc as DocumentSnapshot<Map<String, dynamic>>))
          .toList();
    } catch (e) {
      throw e.toString();
    }
  }
}

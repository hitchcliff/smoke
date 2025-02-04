import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/models/user/user_model.dart';
import 'package:single_store_ecommerce/utils/constants/db_collections.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  save(UserModel user) async {
    try {
      // ---# Put user in Firestore DB
      await _db
          .collection(MyDBCollections.users)
          .doc(user.id)
          .set(user.toJson());
    } catch (e) {
      throw 'Something went wrong ${e.toString()}';
    }
  }
}

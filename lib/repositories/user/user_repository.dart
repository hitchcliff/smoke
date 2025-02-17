import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:single_store_ecommerce/models/user/user_model.dart';
import 'package:single_store_ecommerce/repositories/auth/auth_repository.dart';
import 'package:single_store_ecommerce/utils/constants/db_collections.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final AuthRepository _authRepository = AuthRepository.instance;

  /// Create user
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

  /// Read user
  Future<UserModel> getUser() async {
    try {
      final documentSnapshot = await _db
          .collection(MyDBCollections.users)
          .doc(_authRepository.authUser?.uid)
          .get();

      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      }

      return UserModel.empty();
    } catch (e) {
      throw 'Something went wrong ${e.toString()}';
    }
  }

  /// Update single user field
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection(MyDBCollections.users)
          .doc(_authRepository.authUser?.uid)
          .update(json);
    } catch (e) {
      throw 'Something went wrong ${e.toString()}';
    }
  }

  /// Delete user
  Future<void> delete() async {
    try {
      await _db
          .collection(MyDBCollections.users)
          .doc(_authRepository.authUser!.uid)
          .delete();
    } catch (e) {
      throw e.toString();
    }
  }
}

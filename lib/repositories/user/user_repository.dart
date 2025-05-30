import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smoke/models/user_model.dart';
import 'package:smoke/repositories/auth/auth_repository.dart';
import 'package:smoke/utils/constants/db_collections.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final AuthRepository _authRepository = AuthRepository.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

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

  /// Upload any image
  Future<String> uploadImage(String path, XFile image) async {
    try {
      final ref = _storage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      throw e.toString();
    }
  }
}

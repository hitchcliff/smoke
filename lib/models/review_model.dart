import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewModel {
  const ReviewModel({
    this.id,
    required this.message,
    required this.rating,
    required this.productId,
    required this.userId,
    required this.userImg,
    required this.userFullName,
    required this.createdAt,
  });

  final String? id;
  final String message;
  final double rating;
  final String productId;
  final String userId;
  final String userImg;
  final String userFullName;
  final num createdAt;

  // empty
  static ReviewModel empty() => ReviewModel(
      createdAt: DateTime.now().millisecondsSinceEpoch,
      message: "",
      rating: 0.0,
      productId: "",
      userId: "",
      userFullName: "",
      userImg: "");

  // to json
  Map<String, dynamic> toJson() {
    return {
      "createdAt": createdAt,
      "rating": rating,
      "message": message,
      "productId": productId,
      "userId": userId,
      "userImg": userImg,
      "userFullName": userFullName,
    };
  }

  // transform data from firebase
  factory ReviewModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      return ReviewModel(
        id: document.id,
        createdAt: data['createdAt'],
        message: data['message'],
        rating: data['rating'],
        productId: data['productId'],
        userId: data['userId'],
        userImg: data['userImg'],
        userFullName: data['userFullName'],
      );
    } else {
      return ReviewModel.empty();
    }
  }
}

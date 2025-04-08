import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewModel {
  const ReviewModel(
      {this.id,
      required this.message,
      required this.rating,
      required this.productId,
      required this.userId});

  final String? id;
  final String message;
  final double rating;
  final String productId;
  final String userId;

  // empty
  static ReviewModel empty() =>
      ReviewModel(message: "", rating: 0.0, productId: "", userId: "");

  // to json
  Map<String, dynamic> toJson() {
    return {
      "message": message,
      "rating": rating,
      "productId": productId,
      "userId": userId,
    };
  }

  // transform data from firebase
  factory ReviewModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;

      return ReviewModel(
          id: document.id,
          message: data['message'],
          rating: data['rating'],
          productId: data['productId'],
          userId: data['userId']);
    } else {
      return ReviewModel.empty();
    }
  }
}

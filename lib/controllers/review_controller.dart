import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:smoke/components/snackbars/snackbars.dart';
import 'package:smoke/controllers/product_controller.dart';
import 'package:smoke/controllers/user_controller.dart';
import 'package:smoke/models/review_model.dart';
import 'package:smoke/repositories/shop/review_repository.dart';
import 'package:smoke/screens/product_detail.dart';

class ReviewController extends GetxController {
  static ReviewController get instance => Get.find();

  Rx<bool> loading = false.obs;
  Rx<double> rating = 1.0.obs;
  TextEditingController message = TextEditingController();
  GlobalKey<FormState> reviewKey = GlobalKey<FormState>();
  RxList<ReviewModel> reviews = <ReviewModel>[].obs;
  RxList<ReviewModel> singleReviews = <ReviewModel>[].obs;

  // Repository
  final ReviewRepository _reviewRepository = Get.put(ReviewRepository());

  // Controller
  final ProductController _productController = ProductController.instance;
  final UserController _userController = Get.put(UserController());

  @override
  void onInit() {
    readAll();

    super.onInit();
  }

  /// create review
  create() async {
    try {
      loading.value = true;

      // Validate
      if (!reviewKey.currentState!.validate()) {
        return;
      }

      final model = ReviewModel(
        createdAt: DateTime.now().millisecondsSinceEpoch,
        rating: rating.value,
        message: message.value.text.trim(),
        productId: _productController.singleProduct.value.id,
        userId: _userController.user.value.id,
        userImg: _userController.user.value.profilePicture,
        userFullName:
            "${_userController.user.value.firstName} ${_userController.user.value.lastName}",
      );

      await _reviewRepository.create(model);

      // Success message
      Snackbars.success(
          title: "Success!", message: "Your review has been submitted");

      // Redirect user to product detail
      // Get.offAll(() => const ProductDetailScreen());
      // Get.to(() => const ProductDetailScreen());
      Get.back();
      message.clear();
    } catch (e) {
      Snackbars.error(title: "Review", message: e.toString());
      Logger().d("error ${e.toString()}");
    } finally {
      loading.value = false;
    }
  }

  /// Read all reviews
  readAll() async {
    try {
      loading.value = true;

      // Get the data
      final data = await _reviewRepository.readAll();

      data.sort((a, b) => b.createdAt.compareTo(a.createdAt));

      // Save to state
      reviews.assignAll(data);
    } catch (e) {
      Snackbars.error(title: "Read all reviews", message: e.toString());
    } finally {
      loading.value = false;
    }
  }

  /// Read a single review through `productId`
  List<ReviewModel> read(String productId) {
    // Find the view
    final data =
        reviews.where((review) => review.productId == productId).toList();

    // // Set the singleReviews
    singleReviews.assignAll(data);

    // Logger().d("Reviews: ${data.length}");
    return data;
  }
}

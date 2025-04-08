import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/controllers/user_controller.dart';
import 'package:single_store_ecommerce/models/review_model.dart';
import 'package:single_store_ecommerce/repositories/shop/review_repository.dart';
import 'package:single_store_ecommerce/screens/product_detail.dart';

class ReviewController extends GetxController {
  static ReviewController get instance => Get.find();

  Rx<bool> loading = false.obs;
  Rx<double> rating = 1.0.obs;
  TextEditingController message = TextEditingController();
  GlobalKey<FormState> reviewKey = GlobalKey<FormState>();

  // Repository
  final ReviewRepository _reviewRepository = Get.put(ReviewRepository());

  // Controller
  final ProductController _productController = ProductController.instance;
  final UserController _userController = UserController.instance;

  /// create review
  create() async {
    try {
      loading.value = true;

      // Validate
      if (!reviewKey.currentState!.validate()) {
        return;
      }

      final model = ReviewModel(
        rating: rating.value,
        message: message.value.text.trim(),
        productId: _productController.singleProduct.value.id,
        userId: _userController.user.value.id,
      );

      await _reviewRepository.create(model);

      // Success message
      Snackbars.success(
          title: "Success!", message: "Your review has been submitted");

      // Redirect user to product detail
      Get.off(() => const ProductDetailScreen());
    } catch (e) {
      Snackbars.error(title: "Review", message: e.toString());
      Logger().d("error ${e.toString()}");
    } finally {
      loading.value = false;
    }
  }
}

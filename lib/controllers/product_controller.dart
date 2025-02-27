import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/repositories/shop/product_repository.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  /// Repository
  final ProductRepository _productRepository = Get.put(ProductRepository());

  /// Create product
  create(ProductModel product) async {
    try {
      FullScreenLoader.openLoadingDialog(
          "Uploading data...", MyImages.docerAnimation);

      await _productRepository.upload(product);

      Snackbars.success(
          title: "Success", message: "Congratulations, products are uploaded");
    } catch (e) {
      Snackbars.error(title: "Error", message: e.toString());
    } finally {
      FullScreenLoader.stopLoading();
    }
  }
}

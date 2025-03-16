import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/loaders/full_screen_loader.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/repositories/shop/product_repository.dart';
import 'package:single_store_ecommerce/utils/constants/image_strings.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  Rx<bool> loading = false.obs;
  RxList<ProductModel> products = <ProductModel>[].obs;
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  /// Repository
  final ProductRepository _productRepository = Get.put(ProductRepository());

  @override
  void onInit() {
    read();

    super.onInit();
  }

  /// Create product
  create(ProductModel product) async {
    try {
      FullScreenLoader.openLoadingDialog(
          "Uploading data...", MyImages.docerAnimation);

      /// Upload the products
      await _productRepository.upload(product);

      await Snackbars.success(
          title: "Success", message: "Congratulations, products are uploaded");
    } catch (e) {
      Snackbars.error(title: "Error", message: e.toString());
    } finally {
      FullScreenLoader.stopLoading();
    }
  }

  /// Read products
  read() async {
    try {
      loading.value = true;

      /// Fetch all products
      final data = await _productRepository.getProducts();

      /// Assign the products to state
      products.assignAll(data);

      /// Assign featured products
      featuredProducts.assignAll(data.where((d) => d.isFeatured).toList());
    } catch (e) {
      Snackbars.error(title: "Read products", message: e.toString());
    } finally {
      loading.value = false;
    }
  }
}

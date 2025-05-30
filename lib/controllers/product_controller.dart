import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:smoke/components/loaders/full_screen_loader.dart';
import 'package:smoke/components/snackbars/snackbars.dart';
import 'package:smoke/models/product_model.dart';
import 'package:smoke/models/product_variation_model.dart';
import 'package:smoke/repositories/shop/product_repository.dart';
import 'package:smoke/utils/constants/image_strings.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  Rx<bool> loading = false.obs;
  RxList<ProductModel> products = <ProductModel>[].obs;
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;
  Rx<ProductModel> singleProduct = ProductModel.empty().obs;
  Rx<String> singleProductThumbnail = ''.obs;
  Rx<ProductVariationModel> selectedVariation =
      ProductVariationModel.empty().obs;
  RxList<ProductModel> searchedProducts = <ProductModel>[].obs;

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
      featuredProducts
          .assignAll(data.where((d) => d.isFeatured).take(10).toList());
    } catch (e) {
      Snackbars.error(title: "Read products", message: e.toString());
      Logger().e(e);
    } finally {
      loading.value = false;
    }
  }

  /// Updates the single product
  updateSingleProduct(ProductModel product) {
    try {
      loading.value = true;

      // Assign single product
      singleProduct(product);

      singleProductThumbnail.value = product.thumbnail;
    } catch (e) {
      Snackbars.error(title: "Read product", message: e.toString());
    } finally {
      loading.value = false;
    }
  }

  /// Updates the thumbnail
  updateSingleProductThumbnail(String image) {
    singleProductThumbnail.value = image;
  }

  /// Update product variation
  updateSelectedVariation(ProductVariationModel variation) {
    selectedVariation.value = variation;
  }

  // Search products
  searchProducts(String str) {
    searchedProducts.assignAll(products
        .where((val) => val.title.toLowerCase().contains(str.toLowerCase())));
  }

  resortProducts(String str) {
    if (str == "Name") {
      products.sort((a, b) => a.title.compareTo(b.title));
      Logger().d(products);
    } else if (str == "Price") {
      products.sort((a, b) => a.price.compareTo(b.price));
    } else {
      Logger().d("Ratings");
    }
    // if()
    // final newProducts = products.sort()
  }
}

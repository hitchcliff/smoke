import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/controllers/product_controller.dart';
import 'package:single_store_ecommerce/models/category_model.dart';
import 'package:single_store_ecommerce/models/product_model.dart';
import 'package:single_store_ecommerce/repositories/shop/category_repository.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  // Variables
  Rx<bool> loading = false.obs;
  final RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  final RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
  final RxList<ProductModel> products = <ProductModel>[].obs;

  // Repositories
  final CategoryRepository _categoryRepository = Get.put(CategoryRepository());

  // Controller
  final ProductController _productController = Get.put(ProductController());

  @override
  void onInit() {
    readAllCategories();

    super.onInit();
  }

  /// Read all categories
  readAllCategories() async {
    try {
      loading.value = true;

      // Fetch categories
      final categories = await _categoryRepository.readAllCategories();

      // set the categories
      allCategories.assignAll(categories);

      // filter featured categories
      featuredCategories.assignAll(categories
          .where((cat) => cat.isFeatured && cat.parentId.isEmpty)
          .take(8)
          .toList());
    } catch (e) {
      Snackbars.error(
          title: "Unable to fetch categories", message: e.toString());
    } finally {
      loading.value = false;
    }
  }

  /// Read products by {categoryId}
  updateProducts(String id) {
    // Push all products
    products.assignAll(_productController.products
        .where((product) => product.categoryId == id)
        .toList());
  }

  /// Read products by {categoryId}
  /// Returns the products
  List<ProductModel> getProductsById(String id) {
    print('id: $id');
    print(
        'controller: ${_productController.products.map((product) => product.categoryId)}');

    // Push all products
    return _productController.products
        .where((product) => product.categoryId == id)
        .toList();
  }
}

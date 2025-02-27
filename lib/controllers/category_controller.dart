import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/models/category_model.dart';
import 'package:single_store_ecommerce/repositories/shop/category_repository.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  // Variables
  Rx<bool> loading = false.obs;
  final RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  final RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  // Repositories
  final CategoryRepository _categoryRepository = Get.put(CategoryRepository());

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
}

import 'package:get/get.dart';
import 'package:smoke/components/snackbars/snackbars.dart';
import 'package:smoke/models/brand_model.dart';
import 'package:smoke/repositories/shop/brand_repository.dart';

class BrandController extends GetxController {
  static BrandController get instance => Get.find();

  Rx<bool> loading = false.obs;
  RxList<BrandModel> brands = <BrandModel>[].obs;
  RxList<BrandModel> featuredBrands = <BrandModel>[].obs;

  final BrandRepository _brandRepository = Get.put(BrandRepository());

  @override
  void onInit() {
    readAll();
    super.onInit();
  }

  /// Get all brands
  readAll() async {
    try {
      final data = await _brandRepository.readAll();

      /// Assign all featured brands
      featuredBrands
          .assignAll(data.where((brand) => brand.isFeatured).toList());

      // Assign all data to state
      brands.assignAll(data);
    } catch (e) {
      Snackbars.error(title: "Read all brands", message: e.toString());
    } finally {
      loading.value = false;
    }
  }

  /// Read current brand through {id}
  BrandModel read(String id) {
    return brands.where((brand) => brand.id == id).toList()[0];
  }
}

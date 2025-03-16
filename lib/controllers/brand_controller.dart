import 'package:get/get.dart';
import 'package:single_store_ecommerce/components/snackbars/snackbars.dart';
import 'package:single_store_ecommerce/models/brand_model.dart';
import 'package:single_store_ecommerce/repositories/shop/brand_repository.dart';

class BrandController extends GetxController {
  BrandController get instance => Get.find();

  Rx<bool> loading = false.obs;
  RxList<BrandModel> brands = <BrandModel>[].obs;

  final BrandRepository _brandRepository = Get.put(BrandRepository());

  /// Get all brands
  readAll() async {
    try {
      final data = await _brandRepository.readAll();

      // Assign all data to state
      brands.assignAll(data);
    } catch (e) {
      Snackbars.error(title: "Read all brands", message: e.toString());
    } finally {
      loading.value = false;
    }
  }
}

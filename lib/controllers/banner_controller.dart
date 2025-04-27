import 'package:get/get.dart';
import 'package:smoke/components/snackbars/snackbars.dart';
import 'package:smoke/models/banner_model.dart';
import 'package:smoke/repositories/shop/banner_repository.dart';

class BannerController extends GetxController {
  BannerController get instance => Get.find();

  Rx<bool> loading = false.obs;
  RxList<BannerModel> banners = <BannerModel>[].obs;

  final BannerRepository _bannerRepository = Get.put(BannerRepository());

  @override
  void onInit() {
    readAll();

    // TODO: implement onInit
    super.onInit();
  }

  /// Get all banners
  readAll() async {
    try {
      loading.value = true;
      final data = await _bannerRepository.readAll();

      /// Assign to state
      banners.assignAll(data);
    } catch (e) {
      Snackbars.error(title: "Read all banners", message: e.toString());
    } finally {
      loading.value = false;
    }
  }
}

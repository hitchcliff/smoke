import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeSliderController extends GetxController {
  final CarouselSliderController carouselController =
      CarouselSliderController();

  static HomeSliderController get instance => Get.find();

  Rx<int> currentIdx = 0.obs;

  updatePageIdx(index) {
    currentIdx.value = index;
  }
}

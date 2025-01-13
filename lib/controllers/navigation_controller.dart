import 'package:get/get.dart';
import 'package:single_store_ecommerce/screens/home.dart';
import 'package:single_store_ecommerce/screens/profile.dart';
import 'package:single_store_ecommerce/screens/store2.dart';
import 'package:single_store_ecommerce/screens/wishlist.dart';

class NavigationController {
  Rx<int> currentPageIdx = 0.obs;

  final screens = [
    const Home(),
    const Store2(),
    const Wishlist(),
    const Profile(),
  ];
}

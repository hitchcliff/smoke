import 'package:get/get.dart';
import 'package:smoke/screens/home.dart';
import 'package:smoke/screens/profile.dart';
import 'package:smoke/screens/store.dart';
import 'package:smoke/screens/wishlist.dart';

class NavigationController {
  Rx<int> currentPageIdx = 0.obs;

  final screens = [
    const Home(),
    const Store(),
    const Wishlist(),
    const ProfileScreen(),
  ];
}

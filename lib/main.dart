import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:single_store_ecommerce/app.dart';
import 'package:single_store_ecommerce/firebase_options.dart';
import 'package:single_store_ecommerce/repositories/auth/auth.dart';

Future<void> main() async {
  // ---# Bindings
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // ---# Get Storag
  await GetStorage.init();

  // ---# Loader
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // ---# Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthRepository()));

  // ---# App
  runApp(const App());
}

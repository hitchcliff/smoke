import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smoke/bindings/dep_bindings.dart';
import 'package:smoke/components/widgets/app_scroll_behavior.dart';
import 'package:smoke/utils/constants/colors.dart';
import 'package:smoke/utils/constants/text_strings.dart';
import 'package:smoke/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: MyTexts.appName,
      themeMode: ThemeMode.system, // ThemeMode.system
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      initialBinding: DepBindings(),
      home: const Scaffold(
        backgroundColor: MyColors.primary,
        body: Center(child: CircularProgressIndicator(color: MyColors.white)),
      ),
    );
  }
}

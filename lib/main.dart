import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_ecommerce_app/core/constants/app_theme.dart';
import 'package:multi_vendor_ecommerce_app/core/controllers/theme_controller.dart';
import 'package:multi_vendor_ecommerce_app/core/controllers/language_controller.dart';
import 'package:multi_vendor_ecommerce_app/core/services/translation_service.dart';
import 'package:multi_vendor_ecommerce_app/features/splash/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Get.putAsync(() async => ThemeController());
  await Get.putAsync(() async => LanguageController());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Commerce App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeController.to.themeMode,
      translations: TranslationService(),
      locale: LanguageController.to.locale,
      fallbackLocale: const Locale('en', 'US'),
      home: const SplashScreen(),
    );
  }
}

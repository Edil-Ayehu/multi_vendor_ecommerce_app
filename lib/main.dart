import 'export.dart';

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

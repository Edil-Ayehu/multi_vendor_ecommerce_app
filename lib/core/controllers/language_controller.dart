import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();
  final _locale = const Locale('en', 'US').obs;
  final _prefs = SharedPreferences.getInstance();

  Locale get locale => _locale.value;

  @override
  void onInit() {
    super.onInit();
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final prefs = await _prefs;
    final languageCode = prefs.getString('languageCode');
    final countryCode = prefs.getString('countryCode');
    if (languageCode != null && countryCode != null) {
      _locale.value = Locale(languageCode, countryCode);
    }
  }

  Future<void> changeLocale(String languageCode, String countryCode) async {
    final locale = Locale(languageCode, countryCode);
    _locale.value = locale;
    Get.updateLocale(locale);
    final prefs = await _prefs;
    await prefs.setString('languageCode', languageCode);
    await prefs.setString('countryCode', countryCode);
  }
} 
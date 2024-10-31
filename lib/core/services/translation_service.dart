import 'package:get/get.dart';
import 'package:multi_vendor_ecommerce_app/core/translations/am_ET.dart';
import 'package:multi_vendor_ecommerce_app/core/translations/en_US.dart';
import 'package:multi_vendor_ecommerce_app/core/translations/om_ET.dart';

class TranslationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'am_ET': amET,
        'om_ET': omET,
      };
} 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_ecommerce_app/core/controllers/language_controller.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                const SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text('drawer_home'.tr),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: Text('drawer_categories'.tr),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text('drawer_language'.tr),
            onTap: () => _showLanguageDialog(context),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text('drawer_logout'.tr),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('drawer_language'.tr),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLanguageOption('English', 'en', 'US'),
            _buildLanguageOption('አማርኛ', 'am', 'ET'),
            _buildLanguageOption('Afaan Oromoo', 'om', 'ET'),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String title, String languageCode, String countryCode) {
    return ListTile(
      title: Text(title),
      onTap: () {
        LanguageController.to.changeLocale(languageCode, countryCode);
        Get.back();
      },
    );
  }
}
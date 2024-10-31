import 'package:flutter/material.dart';
import 'package:multi_vendor_ecommerce_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:multi_vendor_ecommerce_app/features/home/screens/home_screen.dart';
import 'package:multi_vendor_ecommerce_app/features/categories/screens/categories_screen.dart';
import 'package:multi_vendor_ecommerce_app/features/cart/screens/cart_screen.dart';
import 'package:multi_vendor_ecommerce_app/features/profile/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
} 
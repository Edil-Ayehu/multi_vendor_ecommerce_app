import 'package:flutter/material.dart';
import 'package:multi_vendor_ecommerce_app/core/constants/app_colors.dart';

class Category {
  final String name;
  final IconData icon;
  final Color color;
  final int itemCount;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.itemCount,
  });
}

final List<Category> categories = [
  Category(
    name: 'Electronics',
    icon: Icons.devices,
    color: AppColors.primary,
    itemCount: 120,
  ),
  Category(
    name: 'Fashion',
    icon: Icons.shopping_bag,
    color: AppColors.secondary,
    itemCount: 250,
  ),
  // Add more categories...
]; 
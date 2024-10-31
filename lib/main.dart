import 'package:flutter/material.dart';
import 'package:multi_vendor_ecommerce_app/features/home/screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'E-Commerce App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      useMaterial3: true,
    ),
    home: const HomeScreen(),
  ));
}

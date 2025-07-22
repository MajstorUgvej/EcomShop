import 'package:ecom_shop/pages/shop_page.dart';
import 'package:ecom_shop/pages/start_page.dart';
import 'package:ecom_shop/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      theme: lightMode,
      routes: {
        '/start_page': (context) => const StartPage(),
        '/shop_page': (context) => const ShopPage(),
      },
      
    );
  }
}
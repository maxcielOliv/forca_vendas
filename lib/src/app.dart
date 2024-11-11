import 'package:flutter/material.dart';
import 'package:forca_vendas/src/home_page.dart';
import 'package:forca_vendas/src/pages/client_page.dart';
import 'package:forca_vendas/src/pages/client_register_page.dart';
import 'package:forca_vendas/src/pages/product_page.dart';
import 'package:forca_vendas/src/pages/product_register_page.dart';
import 'package:forca_vendas/src/pages/settings_page.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black87,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        appBarTheme: const AppBarTheme(color: Colors.blueAccent),
      ),
      //home: const HomePage(),
      routes: {
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.clientPage: (context) => const ClientPage(),
        AppRoutes.productPage: (context) => const ProductPage(),
        AppRoutes.settingsPage: (context) => const SettingsPage(),
        AppRoutes.clientRegisterPage: (context) => const ClientRegisterPage(),
        AppRoutes.productRegisterPage: (context) => const ProductRegisterPage()
      },
    );
  }
}

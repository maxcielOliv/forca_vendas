import 'package:flutter/material.dart';
import 'package:forca_vendas/src/home_page.dart';
import 'package:forca_vendas/src/ui/pages/client_page.dart';
import 'package:forca_vendas/src/ui/pages/client_register_page.dart';
import 'package:forca_vendas/src/ui/pages/product_page.dart';
import 'package:forca_vendas/src/ui/pages/product_register_page.dart';
import 'package:forca_vendas/src/ui/pages/settings_page.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

import 'package:flutter/material.dart';
import 'package:forca_vendas/src/home_page.dart';
import 'package:forca_vendas/src/ui/pages/client_page.dart';
import 'package:forca_vendas/src/ui/pages/client_register_page.dart';
import 'package:forca_vendas/src/ui/pages/exit_page.dart';
import 'package:forca_vendas/src/ui/pages/orders_page.dart';
import 'package:forca_vendas/src/ui/pages/product_page.dart';
import 'package:forca_vendas/src/ui/pages/product_register_page.dart';
import 'package:forca_vendas/src/ui/pages/settings_page.dart';
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
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      routes: {
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.clientPage: (context) => const ClientPage(),
        AppRoutes.productPage: (context) => const ProductPage(),
        AppRoutes.ordersPage: (context) => const OrdersPage(),
        AppRoutes.settingsPage: (context) => const SettingsPage(),
        AppRoutes.clientRegisterPage: (context) => const ClientRegisterPage(),
        AppRoutes.productRegisterPage: (context) => const ProductRegisterPage(),
        AppRoutes.exitPage: (context) => ExitPage(),
      },
    );
  }
}

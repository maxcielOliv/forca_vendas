import 'dart:io';

import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_grid_view.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Força de Vendas'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
              ),
              child: const Text('Main Drawer'),
            ),
            ListTile(
              leading: const Icon(Icons.person_3_outlined),
              title: const Text('Clientes'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.clientPage);
              },
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text('Produtos'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.productPage);
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt_rounded),
              title: const Text('Pedidos'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.ordersPage);
              },
            ),
            ListTile(
              leading: const Icon(Icons.engineering),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.settingsPage);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app_rounded),
              title: const Text('Sair'),
              onTap: () {
                exit(0);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 2,
              horizontal: 8,
            ),
            child: Image.network(
              'https://i.pinimg.com/474x/97/ec/b8/97ecb83850af06e7d3ed9aedd2102177.jpg',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const MainGridView(),
        ],
      ),
    );
  }
}

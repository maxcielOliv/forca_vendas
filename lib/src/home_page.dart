import 'package:flutter/material.dart';
import 'package:forca_vendas/src/components/main_tree.dart';
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
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Material(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTree(
                      color: Colors.green,
                      icon: Icons.person_3_outlined,
                      label: 'Clientes',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.clientPage);
                      },
                    ),
                    MainTree(
                      color: Colors.amber,
                      icon: Icons.production_quantity_limits,
                      label: 'Produtos',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.productPage);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTree(
                      color: Colors.blueAccent,
                      icon: Icons.file_open_rounded,
                      label: 'Novo Pedido',
                      onTap: () {},
                    ),
                    MainTree(
                      color: Colors.grey.shade800,
                      icon: Icons.receipt_rounded,
                      label: 'Pedidos',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       MainTree(
              //         color: Colors.purple,
              //         icon: Icons.person_3_outlined,
              //         label: 'Receber Dados',
              //         onTap: () {},
              //       ),
              //       MainTree(
              //         color: Colors.brown,
              //         icon: Icons.person_3_outlined,
              //         label: 'Enviar Dados',
              //         onTap: () {},
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTree(
                      color: Colors.grey,
                      icon: Icons.engineering,
                      label: 'Configurações',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.settingsPage);
                      },
                    ),
                    MainTree(
                      color: Colors.deepOrange,
                      icon: Icons.exit_to_app_rounded,
                      label: 'Sair',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

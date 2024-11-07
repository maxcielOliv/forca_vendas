import 'package:flutter/material.dart';
import 'package:forca_vendas/src/components/main_tree.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 8,
              ),
              child: Container(
                color: Colors.white,
                width: 300,
                height: 100,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainTree(
                    color: Colors.purple,
                    icon: Icons.person_3_outlined,
                    label: 'Receber Dados',
                    onTap: () {},
                  ),
                  MainTree(
                    color: Colors.brown,
                    icon: Icons.person_3_outlined,
                    label: 'Enviar Dados',
                    onTap: () {},
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
                    color: Colors.grey,
                    icon: Icons.star,
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
    );
  }
}

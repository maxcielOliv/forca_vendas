import 'package:flutter/material.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';

class MainGridView extends StatelessWidget {
  const MainGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.green,
      Colors.amber,
      Colors.blueAccent,
      Colors.grey.shade800,
      Colors.grey,
      Colors.deepOrange
    ];
    final List<IconData> icons = [
      Icons.person_3,
      Icons.shopping_cart,
      Icons.file_open_rounded,
      Icons.receipt_rounded,
      Icons.engineering,
      Icons.exit_to_app_rounded
    ];
    final List<String> labels = [
      'Clientes',
      'Produtos',
      'Novo Pedido',
      'Pedidos',
      'Configurações',
      'Sair'
    ];
    final List<String> routes = [
      AppRoutes.clientPage,
      AppRoutes.productPage,
      AppRoutes.ordersPage,
      AppRoutes.ordersPage,
      AppRoutes.settingsPage,
      AppRoutes.home
    ];
    bool isNavigating = false;
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              if (isNavigating) return;
              isNavigating = true;

              Navigator.of(context)
                  .pushNamed(
                routes[index],
              )
                  .then((_) {
                isNavigating = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colors[index],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[index],
                    size: MediaQuery.of(context).size.height * 0.1,
                  ),
                  FittedBox(
                    child: Text(
                      labels[index],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

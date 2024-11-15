import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';
import 'package:forca_vendas/src/data/models/products.dart';
import 'package:forca_vendas/src/data/products_data.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Products> products = productsList;

    return MainAppBar(
      title: '',
      widgetAppBar: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.productRegisterPage);
        },
        icon: const Icon(Icons.add),
      ),
      widget: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.abc),
            title: Text(
              products[index].name,
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Text('Valor: ${products[index].value}'),
          );
        },
      ),
    );
  }
}
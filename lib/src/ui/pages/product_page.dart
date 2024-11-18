import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    //List<Products> products = productsList;
    final future = Supabase.instance.client.from('products').select();
    return MainAppBar(
      title: '',
      widgetAppBar: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.productRegisterPage);
        },
        icon: const Icon(Icons.add),
      ),
      widget: FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final products = snapshot.data!;
          return ListView.separated(
            itemCount: products.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: const Icon(Icons.abc),
                title: Text(
                  product['name'],
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: Text('Valor: ${product['price']}'),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:forca_vendas/src/components/main_app_bar.dart';

class ProductRegisterPage extends StatelessWidget {
  const ProductRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainAppBar(
      widget: Container(),
      title: 'Novo Produto',
      widgetAppBar: IconButton(
        onPressed: () {},
        icon: Icon(Icons.check),
      ),
    );
  }
}

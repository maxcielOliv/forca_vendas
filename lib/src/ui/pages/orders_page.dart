import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainAppBar(
      title: '',
      widgetAppBar: Container(),
      widget: Text('data'),
    );
  }
}

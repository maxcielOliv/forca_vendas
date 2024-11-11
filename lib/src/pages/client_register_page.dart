import 'package:flutter/material.dart';
import 'package:forca_vendas/src/components/main_app_bar.dart';

class ClientRegisterPage extends StatelessWidget {
  const ClientRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainAppBar(
      widget: Container(),
      title: 'Novo cliente',
      widgetAppBar: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.check),
      ),
    );
  }
}

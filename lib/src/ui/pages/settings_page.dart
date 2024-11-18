import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget itemList(String label, Function onTap) {
      return ListTile(
        title: Text(label),
        onTap: () {
          onTap();
        },
      );
    }

    const divider = Divider();

    return MainAppBar(
        title: 'Configurações',
        widgetAppBar: Container(),
        widget: ListView(
          padding: EdgeInsets.all(8),
          children: [
            itemList('Efetuar Backup', () {}),
            divider,
            itemList('Restaurar Backup', () {}),
            divider,
            itemList('Excluir carga pendente', () {}),
            divider,
            itemList('Pesquisas', () {}),
            divider,
            itemList('Expurgo', () {}),
            divider,
            itemList('Impressoras', () {}),
            divider,
            itemList('Sincronização de carga', () {}),
            divider,
            itemList('Licenças', () {}),
            divider,
            itemList('Licenças', () {}),
            divider,
            itemList('Armazenamento', () {}),
            divider,
            itemList('Tema', () {}),
            divider,
            itemList('PDF Pedido', () {}),
            divider,
            itemList('Sobre', () {
              showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                  title: Text('Todos os direitos reservados'),
                ),
              );
            }),
          ],
        ));
  }
}

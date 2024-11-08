import 'package:flutter/material.dart';
import 'package:forca_vendas/src/components/main_app_bar.dart';
import 'package:forca_vendas/src/data/clients.dart';
import 'package:forca_vendas/src/data/clients_data.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Clients> clients = clientsList;

    return MainAppBar(
      title: '',
      widget: ListView.separated(
        itemCount: clients.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.abc),
            title: Text(
              clients[index].name,
              style: const TextStyle(fontSize: 14),
            ),
            subtitle: Text(clients[index].cnpjCpf),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';
import 'package:forca_vendas/src/utils/app_routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final future = Supabase.instance.client.from('client').select();
  @override
  Widget build(BuildContext context) {
    return MainAppBar(
      title: '',
      widgetAppBar: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.clientRegisterPage);
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
          final clients = snapshot.data!;
          return ListView.separated(
            itemCount: clients.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (context, index) {
              final client = clients[index];
              return ListTile(
                leading: const Icon(Icons.abc),
                title: Text(
                  client['name'],
                  style: const TextStyle(fontSize: 14),
                ),
                subtitle: Text(client['cnpj_cpf']),
              );
            },
          );
        },
      ),
    );
  }
}

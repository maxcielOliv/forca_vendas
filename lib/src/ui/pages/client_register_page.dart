import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ClientRegisterPage extends StatefulWidget {
  const ClientRegisterPage({super.key});

  @override
  State<ClientRegisterPage> createState() => _ClientRegisterPageState();
}

class _ClientRegisterPageState extends State<ClientRegisterPage> {
  final nameController = TextEditingController();
  final cpfCnpjController = TextEditingController();

  void saveclient() async {
    await Supabase.instance.client.from('client').insert(
        {'name': nameController.text, 'cnpj_cpf': cpfCnpjController.text});
  }

  @override
  Widget build(BuildContext context) {
    return MainAppBar(
      title: 'Novo cliente',
      widgetAppBar: IconButton(
        onPressed: () {
          saveclient();
          Navigator.pop(context);
        },
        icon: const Icon(Icons.check),
      ),
      widget: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'Nome',
              ),
              onSaved: (value) {
                value = nameController.text;
              },
            ),
            TextFormField(
              controller: cpfCnpjController,
              decoration: const InputDecoration(
                labelText: 'CPF ou CNPJ',
              ),
              onSaved: (value) {
                value = cpfCnpjController.text;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Celular',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

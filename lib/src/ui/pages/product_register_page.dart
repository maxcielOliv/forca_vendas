import 'package:flutter/material.dart';
import 'package:forca_vendas/src/ui/widgets/main_app_bar.dart';
import 'package:forca_vendas/src/ui/widgets/main_text_form_field.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProductRegisterPage extends StatelessWidget {
  const ProductRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();

    void saveProduct() async {
      await Supabase.instance.client
          .from('products')
          .insert({'name': nameController.text, 'price': priceController.text});
    }

    return MainAppBar(
      title: 'Novo Produto',
      widgetAppBar: IconButton(
        onPressed: () {
          saveProduct();
          Navigator.pop(context);
        },
        icon: const Icon(Icons.check),
      ),
      widget: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            MainTextFormField(
              controller: nameController,
              keybordType: TextInputType.text,
              label: 'Nome',
              onSaved: (String? value) {
                value = nameController.text;
              },
            ),
            MainTextFormField(
              controller: priceController,
              keybordType: TextInputType.number,
              label: 'Preço',
              onSaved: (String? value) {
                value = priceController.text;
              },
            ),
          ],
        ),
      ),
    );
  }
}

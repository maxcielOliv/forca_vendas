import 'package:flutter/material.dart';

class MainTextFormField extends StatelessWidget {
  const MainTextFormField(
      {super.key,
      required this.controller,
      required this.keybordType,
      required this.label,
      required this.onSaved});

  final TextEditingController controller;
  final TextInputType keybordType;
  final String label;
  final void Function(String? value) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: label,
      ),
      onSaved: onSaved,
    );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';

class ExitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              exit(0);
            },
            child: Text('Sim'),
          ),
        ],
      ),
    );
  }
}

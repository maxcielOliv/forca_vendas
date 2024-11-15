import 'package:flutter/material.dart';

class MainTree extends StatelessWidget {
  const MainTree(
      {super.key,
      required this.color,
      required this.icon,
      required this.label,
      required this.onTap});

  final Function onTap;

  final Color color;

  final IconData icon;

  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Material(
        color: Colors.transparent,
        child: Container(
          color: color,
          width: 140,
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 60,
              ),
              FittedBox(
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}

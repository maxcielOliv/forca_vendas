import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar(
      {super.key,
      required this.widget,
      required this.title,
      required this.widgetAppBar});

  final Widget widget;
  final String title;
  final Widget widgetAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        actions: [widgetAppBar],
      ),
      body: widget,
    );
  }
}

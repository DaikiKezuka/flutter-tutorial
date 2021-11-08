import 'package:flutter/material.dart';

class ScaffoldWithButton extends StatelessWidget {
  const ScaffoldWithButton(
      {Key? key,
      required this.title,
      required this.floatingActionButton,
      required this.body})
      : super(key: key);

  final String title;
  final Widget floatingActionButton;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: floatingActionButton,
      body: body,
    );
  }
}

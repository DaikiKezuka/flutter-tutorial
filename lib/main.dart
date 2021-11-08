import 'package:flutter/material.dart';

import 'util/page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter App',
    home: HomeApp(),
  ));
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home App'),
        ),
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min, children: getChildren(context)),
        ));
  }
}

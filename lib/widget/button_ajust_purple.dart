import 'package:flutter/material.dart';

class ButtonAjustPurple extends StatelessWidget {
  const ButtonAjustPurple({Key? key, required this.buttonAction})
      : super(key: key);

  final Function buttonAction;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          buttonAction();
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.adjust));
  }
}

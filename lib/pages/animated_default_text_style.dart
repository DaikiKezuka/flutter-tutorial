import 'package:flutter/material.dart';

import '../widget/scaffold_with_button.dart';
import '../widget/button_ajust_purple.dart';

const animatedDefaultTextStylePageTitle = "AnimatedDefaultTextStyle";

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({Key? key}) : super(key: key);

  @override
  _AnimatedDefaultTextStylePageState createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  var _index = 0;
  TextStyle get _textStyle {
    switch (_index % 4) {
      case 0:
        return Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(color: Colors.red);
      case 1:
        return Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(color: Colors.green);
      case 2:
        return Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Colors.blue);
      case 3:
        return Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(color: Colors.orange);
    }
    return const TextStyle();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithButton(
        title: animatedDefaultTextStylePageTitle,
        floatingActionButton: ButtonAjustPurple(
          buttonAction: () => setState(() {
            _index++;
          }),
          key: const ValueKey(animatedDefaultTextStylePageTitle),
        ),
        body: Center(
            child: AnimatedDefaultTextStyle(
          curve: Curves.easeInOut,
          duration: const Duration(microseconds: 500),
          child: const Text("Hello world"),
          style: _textStyle,
        )));
  }
}

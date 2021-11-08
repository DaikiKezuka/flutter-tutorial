import 'package:flutter/material.dart';

import '../widget/scaffold_with_button.dart';
import '../widget/button_ajust_purple.dart';
import '../widget/image_object.dart';

const animatedOpacityPageTitle = "AnimatedOpacity";

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  _AnimatedOpacityPageState createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithButton(
        title: animatedOpacityPageTitle,
        floatingActionButton: ButtonAjustPurple(
          buttonAction: () => setState(() {
            _index++;
          }),
          key: const ValueKey(animatedOpacityPageTitle),
        ),
        body: Center(
            child: AnimatedOpacity(
          curve: Curves.easeInOut,
          duration: const Duration(microseconds: 500),
          child: const RandomImageObject(
            key: ValueKey(animatedOpacityPageTitle),
            height: 400,
            width: 400,
          ),
          opacity: _index.isEven ? 1 : 0.2,
        )));
  }
}

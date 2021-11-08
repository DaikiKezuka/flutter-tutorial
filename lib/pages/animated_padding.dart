import 'package:flutter/material.dart';

import '../widget/scaffold_with_button.dart';
import '../widget/button_ajust_purple.dart';
import '../widget/image_object.dart';

const animatedPaddingPageTitle = "AnimatedPadding";

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithButton(
        title: animatedPaddingPageTitle,
        floatingActionButton: ButtonAjustPurple(
          buttonAction: () => setState(() {
            _index++;
          }),
          key: const ValueKey(animatedPaddingPageTitle),
        ),
        body: Center(
            child: AnimatedPadding(
          curve: Curves.easeInOut,
          duration: const Duration(microseconds: 500),
          child: const RandomImageObject(
            key: ValueKey(animatedPaddingPageTitle),
            height: 400,
            width: 400,
          ),
          padding: EdgeInsets.symmetric(
              vertical: _index.isEven ? 150 : 0,
              horizontal: _index.isEven ? 70 : 0),
        )));
  }
}

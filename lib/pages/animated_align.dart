import 'package:flutter/material.dart';

import '../widget/scaffold_with_button.dart';
import '../widget/button_ajust_purple.dart';
import '../widget/image_object.dart';

const animatedAlignPageTitle = "AnimatedAlign";

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  _AnimatedAlignPageState createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];
  var _count = 0;

  AlignmentGeometry getAlignment() => _alignments[_count % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithButton(
        title: animatedAlignPageTitle,
        floatingActionButton: ButtonAjustPurple(
            buttonAction: () => setState(() {
                  _count++;
                })),
        body: AnimatedAlign(
          alignment: getAlignment(),
          duration: const Duration(microseconds: 500),
          child: const RandomImageObject(key: ValueKey(animatedAlignPageTitle)),
          curve: Curves.easeInOut,
        ));
  }
}

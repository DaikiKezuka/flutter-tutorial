import 'package:flutter/material.dart';

import '../pages/image_scroll.dart';
import '../pages/animated_align.dart';
import '../pages/animated_default_text_style.dart';
import '../pages/animated_opacity.dart';
import '../pages/animated_padding.dart';

class Page {
  String title;
  Widget widget;
  Page(this.title, this.widget);
}

final _pageList = <Page>[
  Page(imageViewerTitle, const ImageViewer()),
  Page(animatedAlignPageTitle, const AnimatedAlignPage()),
  Page(animatedDefaultTextStylePageTitle, const AnimatedDefaultTextStylePage()),
  Page(animatedOpacityPageTitle, const AnimatedOpacityPage()),
  Page(animatedPaddingPageTitle, const AnimatedPaddingPage()),
];

List<Widget> getChildren(BuildContext context) {
  final result = <Widget>[];
  for (var item in _pageList) {
    result.add(
      Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
              width: 300,
              child: ElevatedButton(
                child: Text(item.title),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item.widget),
                  );
                },
              ))),
    );
  }
  return result;
}

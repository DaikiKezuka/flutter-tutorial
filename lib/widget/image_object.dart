import 'package:flutter/material.dart';

import '../util/constant.dart';

class RandomImageObject extends StatelessWidget {
  const RandomImageObject({Key? key, this.height, this.width})
      : super(key: key);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    print('image key is: ');
    print(key);
    return Padding(
      padding: const EdgeInsets.all(10),
      key: key,
      child: Image.network(
        imageUrl,
        key: key,
        height: height ?? 200,
        width: width ?? 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

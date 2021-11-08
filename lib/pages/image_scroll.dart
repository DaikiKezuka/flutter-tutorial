import 'package:flutter/material.dart';

import '../util/constant.dart';

const imageViewerTitle = '画像カルーセル';

class ImageViewer extends StatefulWidget {
  const ImageViewer({Key? key}) : super(key: key);

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  final _images = <Image>[];

  Widget _buildHorizontalItem(BuildContext context) {
    return SizedBox(
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (_, horizontalIndex) => _buildImageCard(horizontalIndex),
      ),
    );
  }

  Widget _buildImageCard(int horizontalIndex) {
    if (_images.length < horizontalIndex + 1) {
      final _imageUrl = imageUrl + '/sig=$horizontalIndex';
      _images
          .add(Image.network(_imageUrl, fit: BoxFit.cover, key: UniqueKey()));
    }
    return Card(
      child: _images[horizontalIndex],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car image view"),
      ),
      body: _buildHorizontalItem(context),
    );
  }
}

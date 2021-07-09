import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _filePath;

  ImageBanner(this._filePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Image.asset(
        _filePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

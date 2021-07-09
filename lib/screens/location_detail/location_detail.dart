import 'package:flutter/material.dart';

import 'text_section.dart';

import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner('assets/images/img.jpg'),
          TextSection('Obodu Cattle Ranch', 'Welcome to Obudu Cattle Ranch'),
          TextSection('overview',
              'Obudu Mountain Resort (formerly known as the Obudu Cattle Ranch) is a ranch and resort on the Obudu Plateau in Cross River State, Nigeria. It was developed in 1951 by M. McCaughley, a Scot who first explored the mountain ranges in 1949. He camped on the mountaintop of the Oshie Ridge on the Sankwala Mountains for a month before returning with Mr. Hugh Jones, a fellow rancher, in 1951. Together with Dr Crawfeild, they developed the Obudu Cattle Ranch.'),
          TextSection('Tourism',
              'The ranch has in recent times seen an influx of both Nigerian and international tourists because of the development of tourist facilities by Cross-River State Government, which has turned the ranch into a well known holiday and tourist resort center in Nigeria. It has a serene climate compared to other regions in Nigeria'),
        ],
      ),
    );
  }
}

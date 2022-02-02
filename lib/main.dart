import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

void main() {
  runApp(const ImageCompressionPractice());

  // ? set system overlay styles
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.transparent));
}

class ImageCompressionPractice extends StatelessWidget {
  const ImageCompressionPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Image Compressor app",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

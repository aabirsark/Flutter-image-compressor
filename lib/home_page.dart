// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image compressor"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              XFile? image =
                  await ImagePicker().pickImage(source: ImageSource.gallery);

              if (image != null) {
                var compressImage = await FlutterImageCompress.compressWithFile(
                  image.path,
                  minWidth: 720,
                  minHeight: 1280,
                  quality: 90,
                );
              }
            },
            child: const Text("Pick Image")),
      ),
    );
  }
}

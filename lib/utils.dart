// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<Uint8List> testCompressFile(
    File file, int height, int width, int quality) async {
  var result = await FlutterImageCompress.compressWithFile(
    file.absolute.path,
    minWidth: width,
    minHeight: height,
    quality: quality,
  );
  print(file.lengthSync());
  print(result!.length);
  return result;
}

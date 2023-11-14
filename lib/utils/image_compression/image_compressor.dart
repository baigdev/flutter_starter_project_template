import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

class ImageCompressor {
  static final ImageCompressor _instance = ImageCompressor._internal();

  factory ImageCompressor() {
    return _instance;
  }

  ImageCompressor._internal();

  Future<Uint8List> compressFileAndReturnBytes(XFile file) async {
    Uint8List? result;
    try {
      result = await FlutterImageCompress.compressWithFile(
        file.path,
        quality: 60,
        rotate: 360,
        format: CompressFormat.jpeg,
      );
    } on UnsupportedError catch (_) {
      result = await FlutterImageCompress.compressWithFile(
        file.path,
        quality: 60,
        rotate: 360,
        minHeight: 500,
        minWidth: 500,
        format: CompressFormat.jpeg,
      );
    }

    return result!;
  }

  Future<File> compressFileAndReturnFile(XFile file) async {
    File? result;

    var timeStampForImagePathName = DateTime.now().toIso8601String();
    try {
      final targetPath = await getTemporaryDirectory();

      final xFile = await FlutterImageCompress.compressAndGetFile(
        file.path,
        "${targetPath.path}/$timeStampForImagePathName.jpeg",
        quality: 60,
        rotate: 360,
        format: CompressFormat.jpeg,
      );
      if (xFile != null) {
        result = File(xFile.path);
      }
    } on UnsupportedError catch (_) {
      final targetPath = await getTemporaryDirectory();

      final xFile = await FlutterImageCompress.compressAndGetFile(
        file.path,
        "${targetPath.path}/$timeStampForImagePathName",
        quality: 60,
        rotate: 360,
        minHeight: 500,
        minWidth: 500,
        format: CompressFormat.jpeg,
      );
      if (xFile != null) {
        result = File(xFile.path);
      }
    }

    return result!;
  }
}

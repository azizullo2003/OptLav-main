import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

Future<List<MultipartFile>> convertToMultipartFiles(List<XFile> files) async {
  List<MultipartFile> multipartFiles = [];
  for (XFile file in files) {
    multipartFiles.add(await MultipartFile.fromFile(file.path, filename: file.name));
  }
  return multipartFiles;
}

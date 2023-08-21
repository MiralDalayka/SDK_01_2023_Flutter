import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;

class FilesUploadService {
  late Reference firebaseStorageRef;

  Future<String> fileUpload(File file,String valueName) async {
    String result = '';
    firebaseStorageRef = FirebaseStorage.instance
        .ref()
        .child('$valueName/${path.basename(file.path)}');
    await firebaseStorageRef.putFile(file).whenComplete(() async {
      await firebaseStorageRef.getDownloadURL().then((value) {
        result = value;
      });
    });
    return result;
  }
}
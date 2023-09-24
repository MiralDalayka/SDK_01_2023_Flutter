 import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:last_flutter/de/post.dart';

class PostService{
  final FirebaseDatabase _firebaseDatabase =FirebaseDatabase.instance;
  DatabaseReference? databaseReference;
  String root = 'MyRoot/RealTimeDatabase';
  String subRoot = 'PostData '; 
  

  //adding
Future<void> addpost(PostModel model) async{
  databaseReference= _firebaseDatabase.ref();
  await databaseReference!.child(root).child(subRoot).child(model.id!).set(model.toJson()).whenComplete(() {
   log('adding post from service ');
  });
}
 }
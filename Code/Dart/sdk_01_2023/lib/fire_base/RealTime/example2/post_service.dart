import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_model.dart';

class PostService {
  final FirebaseDatabase _firebaseDatabase = FirebaseDatabase.instance;
  DatabaseReference? databaseReference;
  String root = 'MyRoot/RealTimeDatabase';
  String subRoot = 'PostData';

//adding post

  Future<void> addPost(PostModel model) async {
    databaseReference = _firebaseDatabase.ref();
    //set more one value ->> map
    //object  --> map
    await databaseReference!
        .child(root)
        .child(subRoot)
        .child(model.id!)
        .set(model.toJson())
        .whenComplete(() {
      log('Adding Post From Service is done');
    });
  }

  Future<PostList> getPosts() async {
    databaseReference = _firebaseDatabase.ref();
    // once
    DatabaseEvent databaseEvent = await databaseReference!
        .child(root)
        .child(subRoot)
        .orderByValue()
        .once();

    log("Data type is : ${databaseEvent.snapshot.value.runtimeType}");
    log("Data is : ${databaseEvent.snapshot.value}");
// [null,{post1},{post2},{}] --> POS LIST

    if (databaseEvent.snapshot.exists) {
      var postTempList = [];
      var dataMap = databaseEvent.snapshot.value as Map<dynamic, dynamic>;
      dataMap.forEach((key, value) {
        postTempList.add(value); //list of obj [{},{}]
      });
      log("Data convert is done");
      return PostList.fromJson(postTempList);
    }

    return PostList(posts: []);
  }

  Future<void> updatePost(String id, PostModel model) async {
    databaseReference = _firebaseDatabase.ref('$root/$subRoot/$id');
    await databaseReference!.update(model.toJson());
  }

  Future<void> deletePost(String id) async {
    databaseReference = _firebaseDatabase.ref('$root/$subRoot/$id');
    await databaseReference!.remove();
  }
}

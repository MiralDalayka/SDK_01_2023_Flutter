import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sdk_flutter_07_2022/firestore_cloud/example1/post_model.dart';

class PostService {
  final _firestore = FirebaseFirestore.instance;
  final String collectionName = "Posts";

  Future<void> addPost(PostModel model) async {
    //object --> map
    await _firestore
        .collection(collectionName)
        .add(model.toJson())
        .whenComplete(() => log("Adding Post Is Done"))
        .catchError((e) {
      log("Something Wrong Happened $e ");
    });
  }

  Future<PostList> getPosts() async {
    QuerySnapshot querySnapshot = await _firestore
        .collection(collectionName)
        .orderBy('id')
        .get()
        .whenComplete(() => log("Getting Post Is Done"))
        .catchError((e) {
      log("Something Wrong Happened $e ");
    });
    //temp map --> item <- from json
    var tempMap = <String, dynamic>{};
    var tempModel;
    List<PostModel> posts = [];
    for (var item in querySnapshot.docs) {
      tempMap['id'] = item.get('id');
      tempMap['title'] = item.get('title');
      tempMap['subtitle'] = item.get('subtitle');
      tempMap['image'] = item.get('image');
      tempMap['date'] = item.get('date');
      tempModel = PostModel.fromJson(tempMap);
      posts.add(tempModel);
    }

    return PostList(posts: posts);
  }

  Future<void> updatePost(String id, PostModel model) async {
// 1. search post using string id
    QuerySnapshot querySnapshot = await _firestore
        .collection(collectionName)
        .where('id', isEqualTo: id)
        .get()
        .whenComplete(() => log("Get One Post Is Done"))
        .catchError((e) {
      log("Something Wrong Happened $e ");
    });
    // 2. real id <--
    String docId = querySnapshot.docs[0].id;
    //change real id step 2

    await _firestore
        .collection(collectionName)
        .doc(docId)
        .update(model.toJson())
        .whenComplete(() => log("Update Post Is Done"))
        .catchError((e) {
      log("Something Wrong Happened $e ");
    });
  }

  Future<void> deletePost(String id) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection(collectionName)
        .where('id', isEqualTo: id)
        .get();
    String docId = querySnapshot.docs[0].id;

    await _firestore
        .collection(collectionName)
        .doc(docId)
        .delete()
        .whenComplete(() => log("Deleting Post Is Done"))
        .catchError((e) {
      log("Something Wrong Happened $e ");
    });
  }

  Future<PostModel> getPostById(String id) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection(collectionName)
        .where('id', isEqualTo: id)
        .get();

    var tempMap = <String, dynamic>{};
    var item = querySnapshot.docs[0];
    tempMap['id'] = item.get('id');
    tempMap['title'] = item.get('title');
    tempMap['subtitle'] = item.get('subtitle');
    tempMap['image'] = item.get('image');
    tempMap['date'] = item.get('date');
    return PostModel.fromJson(tempMap);
  }
}

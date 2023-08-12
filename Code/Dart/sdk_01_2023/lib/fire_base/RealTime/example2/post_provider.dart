import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_model.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_prefs.dart';
import 'package:sdk_flutter_07_2022/RealTime/example2/post_service.dart';

class PostProvider extends ChangeNotifier {
  final PostService _postService = PostService();

  Future<void> addPost(PostModel model) async {
    await _postService.addPost(model).whenComplete(() {
      log("Adding post from Provider is Done");
      refreshPrefs();
      notifyListeners();
    }).catchError((error) {
      log("Error---- $error");
    });
  }

  Future<PostList> getPosts() async {
    return await _postService.getPosts();
  }

  PostList get offlinePosts {
    List<PostModel> postList = [];
    //get --> null
    var data = Prefs.getListStringValue('postsData') ?? [];
    if (data.isNotEmpty) {
      //convert list of strings --> model -- add model list -- send Post List
      for (var item in data) {
        var decodeData = json.decode(item);
        PostModel model = PostModel.fromJson(decodeData);
        postList.add(model);
      }
      return PostList(posts: postList);
    } else {
      return PostList(posts: []);
    }
  }

  Future<void> updatePost(String id, PostModel model) async {
    await _postService.updatePost(id, model).whenComplete(() {
      refreshPrefs();
      notifyListeners();
    }).catchError((e) {
      log("Update post --> $e");
    });
    //BACK
  }

  Future<void> deletePost(String id) async {
    await _postService.deletePost(id).whenComplete(() {
      refreshPrefs();
      notifyListeners();
    }).catchError((e) {
      log("Delete Post --> $e");
    });
  }

  PostModel getPostById(String id) {
    var model = offlinePosts.posts.singleWhere((element) {
      if (element.id == id) {
        return true;
      }
      return false;
    });
    return model;
  }

  void refreshPrefs() async {
    await Prefs.removeValue('postsData');
    PostModel model;
    String encodeData = '';
    List<String> posts = [];
    PostList postList = await _postService.getPosts(); //get all data
    for (var item in postList.posts) {
      encodeData = json.encode(item.toJson());
      posts.add(encodeData);
    }
    Prefs.setStringListValue('postsData', posts);
  }
}

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive/core/failure.dart';
import 'package:hive/features/posts/data/data_source/datasource.dart';
import 'package:hive/features/posts/data/models/post.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';
import 'package:http/http.dart' as http;

class PostFeedRemoteDataSourceImpl implements PostFeedRemoteDataSource {
  
  @override
  Future<Either<Failure, List<PostEntity>>> fetchPosts() async {
    final url = Uri.parse('https://api.hive.blog/');
    final headers = {
      'accept': 'application/json, text/plain, */*',
      'content-type': 'application/json',
    };
    final jsonData = {
      "id": 1,
      "jsonrpc": "2.0",
      "method": "bridge.get_ranked_posts",
      "params": {"sort": "trending", "tag": "", "observer": "hive.blog"}
    };

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: jsonEncode(jsonData),
      );
      if (response.statusCode == 200) {
        List<PostEntity> posts = json
            .decode(response.body)['result']
            .map<PostEntity>((data) => PostModel.fromJson(data))
            .toList();
        return right(posts);
      } else {
        return left(Failure(
          actualMessage: response.statusCode.toString(),
          messageToDisplay: "Sorry something went wrong"));
      }
    } catch (e) {
       return left(Failure(
        errorObject: e,
          actualMessage: e.toString(),
          messageToDisplay: e.toString()));
    }
  }
}

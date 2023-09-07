import 'package:dartz/dartz.dart';
import 'package:hive/core/failure.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';

abstract class PostFeedRemoteDataSource {
  Future<Either<Failure, List<PostEntity>>> fetchPosts();
}

import 'package:dartz/dartz.dart';
import 'package:hive/core/failure.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';

abstract class PostFeedRepository{
  Future<Either<Failure, List<PostEntity>>> fetchPosts();
}
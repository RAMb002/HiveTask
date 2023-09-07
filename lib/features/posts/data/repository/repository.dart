import 'package:dartz/dartz.dart';
import 'package:hive/core/failure.dart';
import 'package:hive/features/posts/data/data_source/datasource.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';
import 'package:hive/features/posts/domain/repository/repository.dart';

class PostFeedRepositoryImpl implements PostFeedRepository {
  final PostFeedRemoteDataSource remoteDataSource;

  PostFeedRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<PostEntity>>> fetchPosts() async {
    return await remoteDataSource.fetchPosts();
  }
}

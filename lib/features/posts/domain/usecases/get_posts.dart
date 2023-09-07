import 'package:dartz/dartz.dart';
import 'package:hive/core/failure.dart';
import 'package:hive/core/usecase.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';
import 'package:hive/features/posts/domain/repository/repository.dart';

class GetPostsUsecase implements UseCaseWithFailure<List<PostEntity>, NoParam> {
  final PostFeedRepository _repository;

  GetPostsUsecase({required PostFeedRepository repository})
      : _repository = repository;

  @override
  Future<Either<Failure, List<PostEntity>>> call(NoParam param) async {
    return await _repository.fetchPosts();
  }
}

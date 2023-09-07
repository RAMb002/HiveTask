import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/core/failure.dart';
import 'package:hive/core/usecase.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';
import 'package:hive/features/posts/domain/usecases/get_posts.dart';
part 'post_feed_event.dart';
part 'post_feed_state.dart';
part 'post_feed_bloc.freezed.dart';

class PostFeedBloc extends Bloc<PostFeedEvent, PostFeedState> {
  final GetPostsUsecase getPostsUseCase;

  PostFeedBloc({required this.getPostsUseCase})
      : super(const PostFeedState.initial()) {
    on<PostFeedEvent>((event, emit) async {
      emit(const PostFeedState.loading());
      final Either<Failure, List<PostEntity>> result =
          await getPostsUseCase(const NoParam());
      emit(result.fold((failure) => PostFeedState.failed(failure), (posts) {
        if (posts.isNotEmpty) {
          return PostFeedState.data(posts: posts);
        } else {
          return const PostFeedState.empty();
        }
      }));
    });
  }
}

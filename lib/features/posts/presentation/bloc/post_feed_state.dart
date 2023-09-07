part of 'post_feed_bloc.dart';

@freezed
class PostFeedState with _$PostFeedState {
  const factory PostFeedState.initial() = Initial;
  const factory PostFeedState.loading() = Loading;
  const factory PostFeedState.empty() = _empty;
  const factory PostFeedState.data({required List<PostEntity> posts}) = _data;
  const factory PostFeedState.failed(Failure failure) = Failed;
}

part of 'post_feed_bloc.dart';

@freezed
class PostFeedEvent with _$PostFeedEvent {
  const factory PostFeedEvent.fetchPosts() = Fetch;
}
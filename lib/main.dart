import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/core/get_it.dart';
import 'package:hive/features/posts/presentation/bloc/post_feed_bloc.dart';
import 'package:hive/features/posts/presentation/view/post_feed.dart';
import 'core/get_it.dart' as get_it;

void main() {
  get_it.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<PostFeedBloc>(create:(context) => PostFeedBloc(getPostsUseCase: getIt())..add(const PostFeedEvent.fetchPosts()))
        ],
        child: const PostFeedView()
      ),
    );
  }
}

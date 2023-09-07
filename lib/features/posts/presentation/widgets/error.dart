import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/features/posts/presentation/bloc/post_feed_bloc.dart';

class ServerError extends StatelessWidget {
  const ServerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Center(child:  Text("Server Error")),
        TextButton(
          onPressed: () {
            context.read<PostFeedBloc>().add(const PostFeedEvent.fetchPosts());
          },
          child: const Text("Try Again"),
        )
      ],
    );
  }
}

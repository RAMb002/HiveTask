import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/features/posts/presentation/bloc/post_feed_bloc.dart';
import 'package:hive/features/posts/presentation/widgets/item_for_mobile.dart';
import 'package:hive/features/posts/presentation/widgets/empty.dart';
import 'package:hive/features/posts/presentation/widgets/error.dart';
import 'package:hive/features/posts/presentation/widgets/item_for_web.dart';
import 'package:hive/features/posts/presentation/widgets/loading.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PostFeedView extends StatelessWidget {
  const PostFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
        GlobalKey<ScaffoldMessengerState>();
    return SafeArea(
      child: Scaffold(
        key: scaffoldMessengerKey,
        backgroundColor: const Color(0xFFF8F8F8),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12.0),
          child: BlocConsumer<PostFeedBloc, PostFeedState>(
              listener: (context, state) {
            if (state is  Failed) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Center(child: Text('Please check your network connection')),
                  duration: Duration(seconds: 3),
                ),
              );
            }
          }, builder: (context, state) {
            return state.when(
                initial: () => const SizedBox(),
                loading: () => const LoadingIndicator(),
                empty: () => const EmptyData(),
                failed: (failure) => const ServerError(),
                data: (posts) => Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1000),
                        child: ListView.builder(
                          itemCount: posts.length,
                          itemBuilder: (context, index) {
                            return ScreenTypeLayout.builder(
                              mobile: (_) => OrientationLayoutBuilder(
                                portrait: (context) => PostItemForMobile(
                                  item: posts[index],
                                ),
                                landscape: (context) => PostItemForWeb(
                                  item: posts[index],
                                ),
                              ),
                              desktop: (p0) => PostItemForWeb(
                                item: posts[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ));
          }),
        ),
      ),
    );
  }
}

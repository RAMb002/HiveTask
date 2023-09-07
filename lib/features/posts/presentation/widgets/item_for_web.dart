import 'package:flutter/material.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';
import 'package:hive/features/posts/presentation/widgets/interaction_tile.dart';
import 'package:hive/features/posts/presentation/widgets/post_image.dart';
import 'package:hive/features/posts/presentation/widgets/user_tile.dart';

class PostItemForWeb extends StatelessWidget {
  const PostItemForWeb({super.key, required this.item});

  final PostEntity item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Card(
        elevation: 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserTile(
                item: item,
                userImageRadius: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PostImage(
                    item: item,
                    height: 80,
                    width: 130,
                    verticalPadding: 5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(item.body,maxLines: 1,style: const TextStyle(color: Colors.black54,overflow: TextOverflow.ellipsis),),
                          Container(
                            height: 0.5,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            color: Colors.black12.withOpacity(0.1),
                          ),
                          InteractionTile(item: item)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';
import 'package:hive/features/posts/presentation/widgets/interaction_tile.dart';
import 'package:hive/features/posts/presentation/widgets/post_image.dart';
import 'package:hive/features/posts/presentation/widgets/user_tile.dart';

class PostItemForMobile extends StatelessWidget {
  const PostItemForMobile({super.key, required this.item});

  final PostEntity item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserTile(item: item),
            PostImage(item: item,height: 190,width: double.infinity,),
            const SizedBox(
              height: 5,
            ),
            Text(
              item.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(item.body,maxLines: 3,style: const TextStyle(color: Colors.black54,overflow: TextOverflow.ellipsis),)),
            const SizedBox(
              height: 10,
            ),
            InteractionTile(item: item)
          ],
        ),
      ),
    );
 
  }
}


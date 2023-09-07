import 'package:flutter/material.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    required this.item,
    required this.height,
    required this.width,
    this.verticalPadding = 12
  });

  final PostEntity item;
  final double height;
  final double width;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: verticalPadding),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
            image: NetworkImage(
              item.jsonMetaData.image.isNotEmpty
                  ? item.jsonMetaData.image[0]
                  : "",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}

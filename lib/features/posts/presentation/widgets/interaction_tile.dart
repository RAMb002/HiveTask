import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';

class InteractionTile extends StatelessWidget {
  const InteractionTile({super.key, required this.item});

  final PostEntity item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        circleIcon(color: Colors.red, icon: Icons.keyboard_arrow_up),
        circleIcon(color: Colors.black, icon: Icons.keyboard_arrow_down),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              Text("\$${item.payout}"),
              const Icon(
                Icons.arrow_drop_down,
                size: 20,
              )
            ],
          ),
        ),
        verticalDivider(),
        Row(
          children: [
            const Icon(
              Icons.keyboard_arrow_up,
              size: 20,
              color: Colors.grey,
            ),
            Text(item.stats.totalVotes.floor().toString())
          ],
        ),
        verticalDivider(),
        Row(
          children: [
             Padding(
              padding: const EdgeInsets.only(right: 4),
               child: Icon(
                item.children> 1 ? Icons.forum : Icons.chat_bubble,
                color: Colors.grey,
                size: 18,
                         ),
             ),
            Text(item.children.toString())
          ],
        ),
        verticalDivider(),
        const Icon(CupertinoIcons.refresh_thin,color: Colors.grey,size: 18,)
      ],
    );
  }

  Container verticalDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: 15,
      width: 1,
      color: Colors.black12,
    );
  }

  Container circleIcon({required Color color, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          border: Border.all(color: color), shape: BoxShape.circle),
      child: Icon(
        icon,
        color: color,
        size: 15,
      ),
    );
  }
}

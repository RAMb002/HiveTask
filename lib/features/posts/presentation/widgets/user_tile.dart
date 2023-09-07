import 'package:flutter/material.dart';
import 'package:hive/features/posts/domain/entities/post/post/post.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.item, this.userImageRadius = 35});

  final PostEntity item;
  final double userImageRadius;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: userImageRadius,
          width: userImageRadius,
          decoration:
              const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.center,
            children: [
              Text(
                item.author,
                style: textStyle()
                    .copyWith(fontWeight: FontWeight.w700, color: Colors.black),
              ),
              Text(
                " (${item.authorReputation.floor()}) ",
                style: textStyle().copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Visibility(
                  visible: item.authorTitle.isNotEmpty,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.symmetric(vertical :2,horizontal: 3),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red,width: 0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4))),
                    child: Text(
                      item.authorTitle,
                      style: textStyle()
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 10),
                    ),
                  )),
              title(item),
              Text(
                "• ${item.updated}",
                style: textStyle().copyWith(fontSize: 12),
              )
            ],
          ),
        )
      ],
    );
  }

  TextStyle textStyle() {
    return const TextStyle(color: Colors.black54, fontSize: 13);
  }

  Widget title(PostEntity item) {
    if (item.communityTitle.isNotEmpty) {
      return Text(
        "in ${item.communityTitle} ",
        style: textStyle(),
      );
    } else if (item.category.isNotEmpty) {
      return Text(
        "#${item.category} ",
        style: textStyle(),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

   
}

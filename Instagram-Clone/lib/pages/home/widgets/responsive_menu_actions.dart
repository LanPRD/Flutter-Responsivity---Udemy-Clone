import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [Condition.smallerThan(name: DESKTOP)],
          child: IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ),
        const SizedBox(width: 4),
        IconButton(icon: const Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: const Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 4),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
            "https://static1.purebreak.com.br/articles/5/89/24/5/@/339874-sony-se-pronuncia-sobre-decisao-da-disne-amp_article_image-2.jpg",
          ),
        )
      ],
    );
  }
}

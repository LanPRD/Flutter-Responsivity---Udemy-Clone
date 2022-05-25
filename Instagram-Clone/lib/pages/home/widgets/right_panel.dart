import 'package:flutter/material.dart';
import 'package:instagram_responsive_flutter/pages/home/widgets/suggestion_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: "TABLET"),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(35, 56, 20, 0),
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(
                    "https://static1.purebreak.com.br/articles/5/89/24/5/@/339874-sony-se-pronuncia-sobre-decisao-da-disne-amp_article_image-2.jpg",
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "allanprd",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "Peter Parker",
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Sair",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0396F6), fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sugestões para você",
                  style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[500]),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Ver tudo",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const SuggestionItem(),
            const SuggestionItem(),
            const SuggestionItem(),
          ],
        ),
      ),
    );
  }
}

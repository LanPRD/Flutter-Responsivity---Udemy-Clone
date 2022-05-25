import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                "https://static1.purebreak.com.br/articles/5/89/24/5/@/339874-sony-se-pronuncia-sobre-decisao-da-disne-amp_article_image-2.jpg",
              ),
            ),
          ),
        ),
        const Text("allanprd", style: TextStyle(fontSize: 12, color: Colors.white)),
      ],
    );
  }
}

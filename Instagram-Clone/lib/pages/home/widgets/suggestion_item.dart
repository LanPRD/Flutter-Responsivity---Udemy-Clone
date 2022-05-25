import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
              "https://i0.wp.com/www.arrobanerd.com.br/wp-content/uploads/2020/12/deadpool-no-MCU.jpg?fit=800%2C450&ssl=1",
            ),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "deadpool",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Wade Wilson",
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
                "Ligar",
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0396F6), fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

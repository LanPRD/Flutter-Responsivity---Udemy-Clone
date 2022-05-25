import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: ((BuildContext context, BoxConstraints constraints) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[100]!),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        color: Colors.grey[500],
                        onPressed: () {},
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Pesquise alguma coisa aqui",
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400) ...[
                const SizedBox(width: 32),
                TextButton(
                  child: const Text("Aprender"),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8),
                TextButton(
                  child: const Text("Flutter"),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ],
            ],
          );
        }),
      ),
    );
  }
}

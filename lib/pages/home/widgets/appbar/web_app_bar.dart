import 'package:flutter/material.dart';

import 'package:udemy_responsive_flutter/pages/home/widgets/appbar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("Flutter"),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 24),
          OutlinedButton(
            child: const Text("Fazer login"),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: const BorderSide(width: 2, color: Colors.white),
              fixedSize: const Size.fromHeight(36),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            child: const Text("Cadastre-se"),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.white,
              fixedSize: const Size.fromHeight(36),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:udemy_responsive_flutter/breakpoints.dart';

import 'package:udemy_responsive_flutter/pages/home/widgets/appbar/mobile_app_bar.dart';
import 'package:udemy_responsive_flutter/pages/home/widgets/appbar/web_app_bar.dart';
import 'package:udemy_responsive_flutter/pages/home/widgets/sections/advantages_section.dart';
import 'package:udemy_responsive_flutter/pages/home/widgets/sections/courses_section.dart';
import 'package:udemy_responsive_flutter/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size.fromHeight(56),
                )
              : const PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size.fromHeight(72),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1440),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

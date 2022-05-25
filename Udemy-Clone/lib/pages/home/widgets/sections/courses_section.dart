import 'package:flutter/material.dart';

import 'package:udemy_responsive_flutter/breakpoints.dart';
import 'package:udemy_responsive_flutter/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((_, constraints) {
        return GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16, vertical: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      }),
    );
  }
}

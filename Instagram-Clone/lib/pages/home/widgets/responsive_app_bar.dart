import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_responsive_flutter/pages/home/widgets/responsive_menu_actions.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Instagram",
                    style: GoogleFonts.dancingScript(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: const [
                  Condition.largerThan(name: MOBILE),
                ],
                child: Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 4),
                      child: Row(
                        children: const [
                          Icon(Icons.search),
                          SizedBox(width: 4),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 14, color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isCollapsed: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                ],
                replacement: ResponsiveMenuAction(),
                child: Expanded(child: ResponsiveMenuAction()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

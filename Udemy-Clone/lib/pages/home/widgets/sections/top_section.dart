import 'package:flutter/material.dart';

import 'package:udemy_responsive_flutter/breakpoints.dart';

import 'package:udemy_responsive_flutter/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 52,
                  top: 52,
                  child: Card(
                    elevation: 8,
                    color: Colors.black,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: 450,
                      child: Column(
                        children: const [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Daniel Ciofoly! Cursos por apenas R\$22,90. Qualidade garantida",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    elevation: 8,
                    color: Colors.black,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      width: 350,
                      child: Column(
                        children: const [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Daniel Ciofoly! Cursos por apenas R\$22,90. Qualidade garantida",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Aprenda Flutter com este curso",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Bora aprender Flutter com o professor Daniel Ciofoly! Cursos por apenas R\$22,90. Qualidade garantida",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomSearchField(),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

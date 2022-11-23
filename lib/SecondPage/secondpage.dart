import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ExtractedWidger/lightfastpage.dart';

class SecondPage extends StatelessWidget {
  List<Widget> childPage(double width) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
        child: Container(
          width: width,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Light Fast & Powerful",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: const Color(0xff091133)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Text(
                        "Lorem ipsum dolor amet, consectetur adipiscing elit,"
                        "\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                        "\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                        "\nDuis aute irure dolor in"
                        " reprehenderit in voluptate velit esse cillum pariatur.adipiscing elit. ",
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: Color(0xff111B47),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LightFast(
                  text1: "Title Goes Here",
                  text2: "Lorem ipsum dolor sit amet, consec adipcing,"
                      "\nsed do eiusmod tempor incididunt labore "
                      "\nUt enim ad minim veniam, quis nost exercit  "
                      "\nDuis aute irure dolor in",
                ),
                const SizedBox(
                  width: 20,
                ),
                LightFast(
                  text1: "Title Goes Here",
                  text2: "Lorem ipsum dolor sit amet, consectur adipi,"
                      "\nsed do eiusmod tempor incididunt labore  "
                      "\nUt enim ad minim veniam, nostrud exercit  "
                      "\nDuis aute irure dolor in",
                )
              ],
            )
          ]),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: childPage(constraints.biggest.width / 1.2),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: childPage(constraints.biggest.width),
          );
        }
      },
    );
  }
}

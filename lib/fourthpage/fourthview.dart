import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthPage extends StatelessWidget {
  List<Widget> fourthChild(double width) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Container(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
                        " reprehenderit in voluptate velit esse cillum pariatur. ",
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
          ],
        )),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: fourthChild(constraints.biggest.width / 1.2),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: fourthChild(constraints.biggest.width),
          );
        }
      },
    );
  }
}

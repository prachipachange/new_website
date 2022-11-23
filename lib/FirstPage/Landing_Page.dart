import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introduce Your Product\nQuickly & Effectively",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xff091133)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \nDuis aute irure dolor in"
                  " reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  style: GoogleFonts.roboto(
                    fontSize: 10,
                    color: Color(0xff111B47),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  MaterialButton(
                    color: Color(0xff111B47),
                    onPressed: () {},
                    child: const Text(
                      "Product UIKIT",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 10),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Learn More',
                      style: GoogleFonts.roboto(
                        fontSize: 10,
                        color: Color(0xff111B47),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Stack(
        children: [
          Image.asset(
            "image/box.png",
            width: 30,
            height: 40,
          )
        ],
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
            children: pageChildren(constraints.biggest.width / 1.2),
            //
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
          return DesktopPage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1100) {
          return DesktopPage();
        } else {
          return MobilePage();
        }
      },
    );
  }
}

class DesktopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Home",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff505F98)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "About",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff505F98)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Contact",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff505F98)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Landie",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: Color(0xff505F98),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              MaterialButton(
                  color: Color(0xff111B47),
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class MobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Home",
                style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "About",
                style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Contact",
                style: TextStyle(fontSize: 16, color: Color(0xff505F98)),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Landie",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Color(0xff505F98),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              MaterialButton(
                  color: Color(0xff111B47),
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

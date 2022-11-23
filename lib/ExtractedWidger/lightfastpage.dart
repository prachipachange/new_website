import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightFast extends StatelessWidget {
  LightFast({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final text1;
  final text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: GoogleFonts.roboto(
              fontSize: 15,
              color: Color(0xff111B47),
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            text2,
            style: GoogleFonts.roboto(
              fontSize: 9,
              color: Color(0xff111B47),
            ),
          ),
        ),
      ],
    );
  }
}

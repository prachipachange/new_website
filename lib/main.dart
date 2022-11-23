import 'package:flutter/material.dart';

import 'FifthPage/fifthpage.dart';
import 'FirstPage/Landing_Page.dart';
import 'SecondPage/secondpage.dart';
import 'SixthView/sixthview.dart';
import 'ThirdPage/thirdpage.dart';
import 'fourthpage/fourthview.dart';
import 'landie_page/landiepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          // Column(
          //   // mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Row(
          //       // crossAxisAlignment: CrossAxisAlignment.end,
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Container(
          //           height: 500,
          //           width: 450,
          //           decoration: const BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage("image/Path.png"),
          //                 fit: BoxFit.cover),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LandiePage(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                child: LandingPage(),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                child: SecondPage(),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [ThirdView()],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [FourthPage()],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [FifthView()],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SixthView()],
          )
        ],
      ),
    );
  }
}

import 'package:calwin95/widget/button.dart';
import 'package:calwin95/widget/buttonnumber.dart';
import 'package:calwin95/widget/buttonop.dart';
import 'package:calwin95/widget/buttonsmall.dart';
import 'package:calwin95/widget/outhers.dart';
import 'package:calwin95/widget/space1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Win 95 Calculator',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(192, 192, 192, 1),
      appBar: AppBar(
        title: Text(
          'Win 95 Calculator',
          style: GoogleFonts.pressStart2p(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 128, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.width * 0.1,
              child: Row(
                children: [
                  Text(
                    'Edit',
                    style: GoogleFonts.orbitron(
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'View',
                    style: GoogleFonts.orbitron(
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Help',
                    style: GoogleFonts.orbitron(
                      textStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.97,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 0,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.92,
            height: 100,
            alignment: Alignment.bottomRight,
            color: Colors.white,
            padding: EdgeInsets.all(8),
            child: Text(
              '0',
              style: TextStyle(fontSize: 40),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 15),
            child: Row(
              children: [
                Space1(),
                SizedBox(
                  width: 15,
                ),
                Button('Back'),
                SizedBox(
                  width: 5,
                ),
                Button('CE'),
                SizedBox(
                  width: 5,
                ),
                Button('C'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 15),
            child: Row(
              children: [
                ButtonSmall('MC'),
                SizedBox(width: 10),
                ButtonSmall('MR'),
                SizedBox(width: 10),
                ButtonSmall('MS'),
                SizedBox(width: 10),
                ButtonSmall('M +'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 15),
            child: Row(
              children: [
                ButtonNumber('7'),
                SizedBox(width: 10),
                ButtonNumber('8'),
                SizedBox(width: 10),
                ButtonNumber('9'),
                SizedBox(width: 10),
                ButtonOp('/'),
                SizedBox(width: 10),
                Outhers('sqrt'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 15),
            child: Row(
              children: [
                ButtonNumber('4'),
                SizedBox(width: 10),
                ButtonNumber('5'),
                SizedBox(width: 10),
                ButtonNumber('6'),
                SizedBox(width: 10),
                ButtonOp('*'),
                SizedBox(width: 10),
                Outhers('%'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 15),
            child: Row(
              children: [
                ButtonNumber('1'),
                SizedBox(width: 10),
                ButtonNumber('2'),
                SizedBox(width: 10),
                ButtonNumber('3'),
                SizedBox(width: 10),
                ButtonOp('-'),
                SizedBox(width: 10),
                Outhers('1/x'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 10, 15),
            child: Row(
              children: [
                ButtonNumber('0'),
                SizedBox(width: 10),
                ButtonNumber('+/-'),
                SizedBox(width: 10),
                ButtonNumber('.'),
                SizedBox(width: 10),
                ButtonOp('+'),
                SizedBox(width: 10),
                ButtonOp('='),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

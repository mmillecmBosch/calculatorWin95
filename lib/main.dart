import 'package:calwin95/widget/button.dart';
import 'package:calwin95/widget/buttonnumber.dart';
import 'package:calwin95/widget/buttonop.dart';
import 'package:calwin95/widget/buttonsmall.dart';
import 'package:calwin95/widget/others.dart';
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

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final value = [];

  void _screenCalculator(String text) {
    setState(() {
      value.add(text);
    });
  }

  void _back() {
    setState(() {
      value.removeLast();
    });
  }

  void _clearAll() {
    setState(() {
      value.clear();
    });
  }

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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                      text: 'E',
                      style: GoogleFonts.orbitron(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'dit',
                          style: TextStyle(decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                      text: 'V',
                      style: GoogleFonts.orbitron(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'iew',
                          style: TextStyle(decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(
                      text: 'H',
                      style: GoogleFonts.orbitron(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'elp',
                          style: TextStyle(decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.all(8),
              alignment: Alignment.bottomRight,
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Text.rich(
                TextSpan(
                  text: '',
                  children: value.map<InlineSpan>(
                    (number) {
                      return TextSpan(
                        text: number,
                        style: GoogleFonts.orbitron(
                          fontSize: 20,
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Space1(),
                Button(
                  'Back',
                  _back,
                ),
                Button(
                  'CE',
                  _clearAll,
                ),
                Button(
                  'C',
                  _clearAll,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonSmall('MC'),
                ButtonSmall('MR'),
                ButtonSmall('MS'),
                ButtonSmall('M+'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Expanded(
                child: GridView.count(
                  padding: EdgeInsets.all(4),
                  crossAxisCount: 5,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 4,
                  children: [
                    ButtonNumber('7', _screenCalculator),
                    ButtonNumber('8', _screenCalculator),
                    ButtonNumber('9', _screenCalculator),
                    ButtonOp('/'),
                    Others('sqrt'),
                    ButtonNumber('4', _screenCalculator),
                    ButtonNumber('5', _screenCalculator),
                    ButtonNumber('6', _screenCalculator),
                    ButtonOp('*'),
                    Others('%'),
                    ButtonNumber('1', _screenCalculator),
                    ButtonNumber('2', _screenCalculator),
                    ButtonNumber('3', _screenCalculator),
                    ButtonOp('-'),
                    Others('1/x'),
                    ButtonNumber('0', _screenCalculator),
                    ButtonNumber('+/-', _screenCalculator),
                    ButtonNumber('.', _screenCalculator),
                    ButtonOp('+'),
                    ButtonOp('='),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

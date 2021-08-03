import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNumber extends StatelessWidget {
  final String number;
  final Function click;

  ButtonNumber(this.number, this.click);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 90,
      decoration: BoxDecoration(
        color: Color.fromRGBO(192, 192, 192, 1),
        border: Border(
          left: BorderSide(
            color: Colors.white,
          ),
          top: BorderSide(
            color: Colors.white,
          ),
          right: BorderSide(
            color: Colors.black,
          ),
          bottom: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(192, 192, 192, 1),
        ),
        onPressed: () => click(number),
        child: Text(
          number,
          style: GoogleFonts.orbitron(
            textStyle: TextStyle(
              color: Color.fromRGBO(44, 44, 240, 1),
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

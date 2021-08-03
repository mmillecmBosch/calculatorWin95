import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final Function click;
  Button(this.text, this.click);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 40,
      decoration: BoxDecoration(
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
        onPressed: () => click(),
        child: Text(
          text,
          style: GoogleFonts.orbitron(
            textStyle: TextStyle(
              color: Color.fromRGBO(128, 0, 0, 1),
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Outhers extends StatelessWidget {
  final String Op;
  Outhers(this.Op);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.162,
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
        onPressed: () {},
        child: Text(
          Op,
          style: GoogleFonts.orbitron(
            textStyle: TextStyle(
              color: Color.fromRGBO(0, 0, 128, 1),
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

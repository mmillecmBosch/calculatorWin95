import 'package:flutter/material.dart';

class Space1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(192, 192, 192, 1),
        border: Border(
          left: BorderSide(
            color: Colors.black,
          ),
          top: BorderSide(
            color: Colors.black,
          ),
          right: BorderSide(
            color: Colors.white,
          ),
          bottom: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      child: null,
    );
  }
}

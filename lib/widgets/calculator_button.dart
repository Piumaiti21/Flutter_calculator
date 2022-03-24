import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int textColor;
  final double textSize;
  final Function callback;
  const CalculatorButton(
      {required this.text,
      required this.textColor,
      required this.textSize,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
                color: Color(textColor),
              ),
            ),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              )),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}

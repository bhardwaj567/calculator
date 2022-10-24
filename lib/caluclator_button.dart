import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {

  final String text;
  final int fillcolor;
  final int textcolor;
  final double textsize;
  final Function callback;

  const CalculatorButton({
    required this.text,
    required this.fillcolor,
    required this.textcolor,
    required this.textsize,
    required this.callback,

  });

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(height: 70,width: 70,
        child: FlatButton(
          color: Color(fillcolor),
          textColor: Color(textcolor),
          onPressed: () => callback(text),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(text,
            style: TextStyle(
              fontFamily: GoogleFonts.rubik().fontFamily,
              fontSize: textsize,
            ),
          ),
        ),
      ),
    );

  }
}

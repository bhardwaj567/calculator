import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'caluclator_button.dart';

void main() {
  runApp(const Calculator());
}
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {


  }
  late int firstnum;
  late int secondnum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String opretion;

  void buttonOnClick(String buttonVal) {
    print(buttonVal);
    if (buttonVal == 'c') {
      textToDisplay = ' ';
      firstnum = 0;
      secondnum = 0;
      res = ' ';
    }else if(buttonVal=='+/-'){
      if(textToDisplay[0]=='-'){
        res='-'+textToDisplay;
      }
      else {
        res=textToDisplay.substring(1);
      }
    }
    else if (buttonVal == 'AC') {
      textToDisplay = ' ';
      firstnum = 0;
      secondnum = 0;
      res = ' ';
      history = ' ';
    }
    else if (buttonVal == '+' || buttonVal == '-' || buttonVal == 'x' ||
        buttonVal == '/') {
      firstnum = int.parse(textToDisplay);
      res = ' ';
      opretion = buttonVal;
    }
    else if(buttonVal=='<'){
      res = textToDisplay.substring(0,textToDisplay.length-1);
    }
    else if (buttonVal == ' =') {
      secondnum = int.parse(textToDisplay);
      if (opretion == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + opretion.toString() + secondnum.toString();
      }
      if (opretion == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + opretion.toString() + secondnum.toString();
      }
      if (opretion == 'x') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + opretion.toString() + secondnum.toString();
      }
      if (opretion == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + opretion.toString() + secondnum.toString();
      }
      else {
        res = int.parse(textToDisplay + buttonVal).toString();
      }
      setState(() {
        textToDisplay = res;
      });
    }


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "calculator",
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("CALCULATOR"),
          ),
          backgroundColor: Colors.cyanAccent,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      history,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 54,
                          color: Color(0x66FFFFFF),
                        ),
                      ),
                    ),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      textToDisplay,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 54,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  alignment: Alignment(1, 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: 'AC',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: 'C',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '<',
                      fillcolor: 0xFFf4d160,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '/',
                      fillcolor: 0xFFf4d160,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '9',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '8',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '7',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: 'X',
                      fillcolor: 0xFFf4d160,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '6',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '5',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '4',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '-',
                      fillcolor: 0xFFf4d160,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '3',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '2',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '1',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '+',
                      fillcolor: 0xFFf4d160,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(
                      text: '+/-',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '0',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '00',
                      fillcolor: 0xFF8ac4d0,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                    CalculatorButton(
                      text: '=',
                      fillcolor: 0xFFf4d160,
                      textcolor: 0xFF000000,
                      textsize: 20,
                      callback: buttonOnClick,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}

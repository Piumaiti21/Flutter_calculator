// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import './widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  dynamic firstNum;
  dynamic secondNum;
  dynamic history = '';
  dynamic textToDisplay = '';
  dynamic res;
  dynamic operation;
  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      firstNum = int.tryParse(textToDisplay);

      res = '';
      operation = btnVal;
      history = firstNum.toString() + operation.toString();
    } else if (btnVal == '=') {
      secondNum = int.tryParse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Calculator'),
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 12.0,
                  ),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 65, 63, 63),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'C',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '<',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '/',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '8',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '7',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: 'x',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '5',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '4',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '-',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '2',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '1',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '+',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '0',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '00',
                    textColor: 0xFFFFFFFF,
                    textSize: 20,
                    callback: btnOnClick,
                  ),
                  CalculatorButton(
                    text: '=',
                    textColor: 0xFF0D47A1,
                    textSize: 20,
                    callback: btnOnClick,
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

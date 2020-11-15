import 'package:flutter/material.dart';
import 'dart:math';

void main() {
      runApp(DiceApp());
}
class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int nextDiceImage = 1;
  int otherDiceImage =1;
  hexColor(String colorhexcode){
    String customColor = '0xff'+colorhexcode;
    customColor = customColor.replaceAll('#','');
    int colorDigit= int.parse(customColor);
    return colorDigit;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 0.0,
          title: Center(child: Text("Dice app"),
          ),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Spacer(),
            Expanded(
              flex: 1,
                child: Center(child: Image.asset('assets/dice$nextDiceImage.png')
                ),
    ),
              Expanded(
                child: FlatButton(
                  onPressed: () => print('fodder'),
                  child: Image.asset('assets/dice$otherDiceImage.png')
                ),
              ),
              Spacer(),
               RaisedButton(
                 color: Color(hexColor('#9F1D1D')),
                 textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    nextDiceImage = Random().nextInt(6) + 1;
                    otherDiceImage= Random().nextInt(6) + 1;
                  });
                },
                child: Text('Roll!'),
              ),
          ],
      ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//}

//Image.asset('images/dice1.png'),

class DicePage extends StatefulWidget {
  int dice_right_number ;
  int dice_left_number ;
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Icon(Icons.filter_3,color: Colors.white,size: 110,),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice3.png'),
                  onPressed: () {
                    print('right button pressed');
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice5.png'),
                  onPressed: () {
                    print('right button pressed');
                  },
                ),
              ),
              Expanded(
                child: Icon(Icons.filter_5,color: Colors.white,size: 110,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

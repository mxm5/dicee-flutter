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
//
//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
//}
//
//Image.asset('images/dice1.png'),
//
class DicePage extends StatefulWidget {
//  int dice_right_number;
//
//  Widget buildChild() {
//    Widget mild;
//    if (dice_right_number==1) {
//      child = ...
//    } else {
//    child = ...
//    }

//    Widget build(BuildContext context) {
//      return new Container(child: _buildChild());
//  }

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice_right_number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: (dice_right_number==0) ? Container() : () {switch (dice_right_number) {
              case 1:
              {
              return Icon(Icons.filter_1, color: Colors.white, size: 110,);
              }
              break;

              case 2:
              {
              return Icon(Icons.filter_2, color: Colors.white, size: 110,);
              }
              break;

              case 3:
              {
              return Icon(Icons.filter_3, color: Colors.white, size: 110,);
              }
              break;

              case 4:
              {
              return Icon(Icons.filter_4, color: Colors.white, size: 110,);
              }
              break;

              case 5:
              {
              return Icon(Icons.filter_5, color: Colors.white, size: 110,);
              }
              break;


              default:
              {
              return Icon(Icons.filter_6, color: Colors.white, size: 110,);
              }
              break;
              }
            }
                ,
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


        ],
      ),
    );
  }
}

//
//
//zuitchhhhhh
//switch (dice_right_number) {
//case 1:
//{
//return Icon(Icons.filter_1, color: Colors.white, size: 110,);
//}
//break;
//
//case 2:
//{
//return Icon(Icons.filter_2, color: Colors.white, size: 110,);
//}
//break;
//
//case 3:
//{
//return Icon(Icons.filter_3, color: Colors.white, size: 110,);
//}
//break;
//
//case 4:
//{
//return Icon(Icons.filter_4, color: Colors.white, size: 110,);
//}
//break;
//
//case 5:
//{
//return Icon(Icons.filter_5, color: Colors.white, size: 110,);
//}
//break;
//
//
//default:
//{
//return Icon(Icons.filter_6, color: Colors.white, size: 110,);
//}
//break;
//}

//random flutter color


// random flutter icon

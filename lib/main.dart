import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// TODO: we will make a thing that shows d dices or with animation
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[900],
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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice_right_number = 1;

  int dice_left_number = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 70,

//            SizedBox(
//              width: 15.0,
                child: Divider( color: Colors.red[50],),
//            ),
//

              ),
              Expanded(
                child: Icon(
                  IconData(
                      (dice_right_number <= 3)
                          ? 58319 + dice_right_number
                          : 58320 + dice_right_number,
                      fontFamily: 'MaterialIcons')

//                  Icons.filter_3,
                  ,
                  color: Colors.white,
                  size: 110,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$dice_right_number.png'),
                  onPressed: () {
                    setState(() {
                      dice_right_number = Random().nextInt(6) + 1;
                      dice_left_number = Random().nextInt(6) + 1;
                    });
//                    print('right button pressed');
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,

//            SizedBox(
//              width: 15.0,
//              child: Divider( color: Colors.red[50],),
//            ),
//

          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$dice_left_number.png'),
                  onPressed: () {
                    setState(() {
                      dice_right_number = Random().nextInt(6) + 1;
                      dice_left_number = Random().nextInt(6) + 1;
                    });
//                    print('right button pressed');
                  },
                ),
              ),

              Expanded(
                child: Icon(
                  IconData(
                      (dice_left_number <= 3)
                          ? 58319 + dice_left_number
                          : 58320 + dice_left_number, fontFamily: 'MaterialIcons'),
//                  Icons.filter_5,
                  color: Colors.white,
                  size: 110,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,

//            SizedBox(
//              width: 15.0,
//            child: Divider( color: Colors.red[50],),
//            ),
//

          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Icon(Icons.star,color: Colors.white,
//                size: 70,),Icon(Icons.star,color: Colors.white,
//                size: 70,),Icon(Icons.star,color: Colors.white,
//                size: 70,),Icon(Icons.star,color: Colors.white,
//                size: 70,),Icon(Icons.star,color: Colors.white,
//                size: 70,),
//            ],
//          )
        ],
      ),
    );
  }
}

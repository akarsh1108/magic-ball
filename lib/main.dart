import 'package:flutter/material.dart';
import 'dart:math';

//it is the starting point of all apps
void main() {
  //Run app is where we command the device to run the app
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: Colors.lightBlue,
        body: magic(),
      ),
    ),
  );
}

class magic extends StatefulWidget {
  const magic({Key? key}) : super(key: key);

  @override
  _magicState createState() => _magicState();
}

class _magicState extends State<magic> {
  int press = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FlatButton(
              onPressed: () {
                setState(() {
                  press = Random().nextInt(5) + 1;
                });
                print('I got clicked');
              },
              child: Image.asset('images/ball$press.png')),
        ),
      ],
    );
  }
}

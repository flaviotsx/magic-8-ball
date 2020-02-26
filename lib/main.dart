import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Ask me something'),
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 2;
              });
              print(ballNumber);
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}

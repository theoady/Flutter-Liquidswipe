import 'package:flutter/material.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final pages = [
    Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        SizedBox(height: 180),
        Image.asset("images/ilustrasi.png"),
        SizedBox(height: 60),
        Text(
          "Welcome To The App",
          style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Lets Connect To Other People",
          style: TextStyle(fontSize: 18.0),
        )
      ]),
    ),
    Container(
      color: Colors.purple,
      child: Column(children: <Widget>[
        SizedBox(height: 180),
        Image.asset("images/ilustration2.png"),
        SizedBox(height: 60),
        Text(
          "Dont Be Perfect",
          style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Just Keep Learning And Build Something",
          style: TextStyle(fontSize: 18.0),
        )
      ]),
    ),
    Container(
      color: Colors.deepPurpleAccent,
      child: Column(children: <Widget>[
        SizedBox(height: 180),
        Image.asset("images/ilustrasi3.png"),
        SizedBox(height: 60),
        Text(
          "Dont Be Bored",
          style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Lets Have Fun With Your Codes",
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 40),
        RaisedButton(
          onPressed: null,
          splashColor: Colors.purpleAccent,
          color: Colors.purple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child:
              Text("Lets Get Started", style: TextStyle(color: Colors.white)),
        )
      ]),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          positionSlideIcon: 1,
          waveType: WaveType.liquidReveal,
        ),
      ),
    );
  }
}

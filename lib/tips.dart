import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:TrackSide/datetime_picker_formfield.dart';

class TipsPage extends StatefulWidget {
  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homeBackGround.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(image: new AssetImage("assets/horseRacing.png")),
              // SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:TrackSide/datetime_picker_formfield.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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

  final dateFormat = DateFormat.yMMMMd("en_US"); 
}
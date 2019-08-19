import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:TrackSide/datetime_picker_formfield.dart';

class StandingPage extends StatefulWidget {
  @override
  _StandingPageState createState() => _StandingPageState();
}

class Schedule {
  String date;
  Schedule(this.date);
}

class _StandingPageState extends State<StandingPage> {
  static DateTime date = DateTime.now();
  String dateFormat = DateFormat('EEEE, MMMM d, y').format(date);

  List<Schedule> schedule = new List<Schedule>();


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
              body(dateFormat),
            ],
          ),
        ),
      ),
    );
  }

  Widget body(dateFormat) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            // height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Table(
                border: TableBorder.all(width: 1.0, color: Colors.white),
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text(dateFormat,
                          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),                          ),
                        ],
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class Home extends StatelessWidget {
  static const String _title = 'Home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _navigateToScreens(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              this._selectedIndex = index;
            });
            _navigateToScreens(index);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: new Image.asset('assets/standing.png'),
                activeIcon: new Image.asset('assets/standingSelected.png'),
                title: new Text("Standings",
                    style: new TextStyle(
                        color: const Color(0xFF06244e), fontSize: 14.0))),
            new BottomNavigationBarItem(
                icon: new Image.asset('assets/news.png'),
                activeIcon: new Image.asset('assets/newsSelected.png'),
                title: new Text("News",
                    style: new TextStyle(
                        color: const Color(0xFF06244e), fontSize: 14.0))),
            new BottomNavigationBarItem(
                icon: new Image.asset('assets/tips.png'),
                activeIcon: new Image.asset('assets/tipsSelected.png'),
                title: new Text(
                  "Tips",
                  style: new TextStyle(
                      color: const Color(0xFF06244e), fontSize: 14.0),
                )),
          ]),
    );
  }
}
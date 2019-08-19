import 'package:flutter/material.dart';
import 'package:TrackSide/standings.dart';
import 'package:TrackSide/news.dart';
import 'package:TrackSide/tips.dart';

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

// SingleTickerProviderStateMixin is used for animation
class _MyStatefulWidgetState extends State<MyStatefulWidget> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[StandingPage(), NewsPage(), TipsPage()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.black,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: new Image.asset('assets/standingSelected.png'),
            ),
            Tab(
              icon: new Image.asset('assets/newsSelected.png'),
            ),
            Tab(
              icon: new Image.asset('assets/tipsSelected.png'),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}

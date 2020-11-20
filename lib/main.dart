import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController _controller=PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: <Widget>[
            Page1(),
            Page2(),
            Page3(),

          ],
        ),
      ),
    );
  }
}

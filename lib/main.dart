import 'package:flutter/material.dart';

import 'attendee_list_widget.dart';
import 'header_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
              child: CustomScrollView(
          slivers: <Widget>[
            HeaderWidget(),
            AttendeeListWidget(),
          ],
        ),
      ),
    );
  }
}




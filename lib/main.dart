import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: Container(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xFFFFFF00)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        '${attendees[index].firstName.substring(0, 1)}${attendees[index].lastName.substring(0, 1)}'),
                  ),
                ),
                title: Text(
                    '${attendees[index].firstName} ${attendees[index].lastName}'),
              ),
              childCount: attendees.length
            ),
          ),
        ],
      ),
    );
  }
}

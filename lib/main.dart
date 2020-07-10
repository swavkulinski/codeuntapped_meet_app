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
            SliverAppBar(
              backgroundColor: Theme.of(context).accentColor,
              expandedHeight: 200,
              flexibleSpace: Stack(children: <Widget>[
                LayoutBuilder(
                                builder:(context,constraints) => Container(
                    width: constraints.maxWidth,
                    child: Image.asset(
                      'assets/cu_background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ColorFiltered(
                        colorFilter: invertFilter,
                        child: Image.asset(
                          'assets/cu_logo.png',
                        )),
                  ),
                ),
              ]),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                        leading: Container(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                                '${attendees[index].firstName.substring(0, 1)}${attendees[index].lastName.substring(0, 1)}'),
                          ),
                        ),
                        title: Text(
                            '${attendees[index].firstName} ${attendees[index].lastName}'),
                      ),
                  childCount: attendees.length),
            ),
          ],
        ),
      ),
    );
  }
}

const invertFilter = ColorFilter.matrix(<double>[
  -1,
  0,
  0,
  0,
  255,
  0,
  -1,
  0,
  0,
  255,
  0,
  0,
  -1,
  0,
  255,
  0,
  0,
  0,
  1,
  0,
]);

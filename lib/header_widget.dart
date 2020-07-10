import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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



import 'package:flutter/material.dart';
import 'data.dart';

class AttendeeListWidget extends StatelessWidget {
  const AttendeeListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
    );
  }
}
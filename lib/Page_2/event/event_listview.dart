import 'package:first_project/Page_2/event/event.dart';
import 'package:first_project/Page_2/event/event_list.dart';

import 'package:flutter/material.dart';

class EventListView extends StatefulWidget {
  const EventListView({super.key});

  @override
  State<EventListView> createState() => _EventListViewState();
}

final iInfo = EventInfo.generatedEventList();

class _EventListViewState extends State<EventListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 800,
      width: double.infinity,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Event(iInfo[index]),
          separatorBuilder: (context, index) => SizedBox(height: 5),
          itemCount: iInfo.length),
    );
  }
}

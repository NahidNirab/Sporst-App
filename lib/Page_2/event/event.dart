import 'package:first_project/Page_2/event/event_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Event extends StatefulWidget {
  EventInfo eventInfo;
  Event(this.eventInfo);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  Color btn = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${widget.eventInfo.title}"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("${widget.eventInfo.location}"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.payment_sharp),
                            Text(
                              "${widget.eventInfo.price}",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(btn),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(btn),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today_outlined),
                              Text(
                                "${widget.eventInfo.date}",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 1,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Permain terkumpal",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 10,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://media.licdn.com/dms/image/C4E03AQGkcaZyq4WfTw/profile-displayphoto-shrink_400_400/0/1516765497466?e=1681948800&v=beta&t=pZp_A_sEXujEWCx14z9qNhkK4e1-4L3-m5P29mVnsnM"),
                              ),
                            ),
                            Positioned(
                              left: 25,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://media.licdn.com/dms/image/C4E03AQGkcaZyq4WfTw/profile-displayphoto-shrink_400_400/0/1516765497466?e=1681948800&v=beta&t=pZp_A_sEXujEWCx14z9qNhkK4e1-4L3-m5P29mVnsnM"),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://media.licdn.com/dms/image/C4E03AQGkcaZyq4WfTw/profile-displayphoto-shrink_400_400/0/1516765497466?e=1681948800&v=beta&t=pZp_A_sEXujEWCx14z9qNhkK4e1-4L3-m5P29mVnsnM"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("5 dari 11 Orang")
                    ],
                  )
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text("Bala Kaki")),
            ],
          ),
        ],
      ),
    );
  }
}

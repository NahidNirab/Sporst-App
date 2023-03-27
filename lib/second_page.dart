import 'package:first_project/Page_2/appbar.dart';
import 'package:first_project/Page_2/event/event_listview.dart';

import 'package:first_project/Page_2/taglist.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SafeArea(
              child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppbarDemo(),
                Text(
                  "    Kategori olahraga",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                TagList(),
                SizedBox(height: 15),
                EventListView(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

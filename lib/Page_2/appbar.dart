import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({super.key});

  @override
  State<AppbarDemo> createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.sort_rounded)),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            ],
          )
        ],
      ),
    );
  }
}

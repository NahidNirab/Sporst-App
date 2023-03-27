import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = <String>[
    '⚽ Bala kaki',
    '🏀 Basket',
    '🏊🏼‍♂️ Renang',
    '🏸 Badminton',
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 50,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selected == index ? Colors.pink : Colors.white,
                    border: Border.all(
                        color: selected == index ? Colors.black : Colors.pink),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Text(_tagList[index]),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
          itemCount: _tagList.length),
    );
  }
}

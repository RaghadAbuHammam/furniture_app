import 'package:flutter/material.dart';
import 'package:furniture_app/style/color.dart';
import 'package:furniture_app/style/text_style.dart';

class CardClass extends StatefulWidget {
  String txt;
  CardClass({required this.txt});

  @override
  State<CardClass> createState() => _CardClassState();
}

class _CardClassState extends State<CardClass> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(widget.txt,style: bodyTextStyle,),
        ),
      ),
    );
  }
}

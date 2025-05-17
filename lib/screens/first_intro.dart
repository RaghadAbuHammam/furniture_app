import 'package:flutter/material.dart';
import 'package:furniture_app/style/text_style.dart';

class FirstIntro extends StatefulWidget {
  String img;
  String txt;
  FirstIntro({required this.img,required this.txt});

  @override
  State<FirstIntro> createState() => _FirstIntroState();
}

class _FirstIntroState extends State<FirstIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(widget.img),
          SizedBox(height: 50),
          Text(widget.txt,style: textStyle
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/style/color.dart';

class CardOfProduct extends StatefulWidget {
  String img;
  String headText;
  String bodyText;
  double price;
  CardOfProduct({required this.img,required this.headText,required this.bodyText,required this.price,});

  @override
  State<CardOfProduct> createState() => _CardOfProductState();
}

class _CardOfProductState extends State<CardOfProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children:[ Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.img,width: 75,),
            Text(widget.headText),
            Text(widget.bodyText),
            Text(widget.price.toString()),
          ],
        ),
      ),
        Positioned(
          bottom: -3,
          right: -3,
          child: Container(
            decoration: BoxDecoration(
              color: logoColor,
              shape: BoxShape.circle
            ),
              child: Icon(CupertinoIcons.down_arrow)),
        )
      ]
    );
  }
}

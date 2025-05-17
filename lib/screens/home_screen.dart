import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/custom_widget/card.dart';
import 'package:furniture_app/custom_widget/card_of_product.dart';
import 'package:furniture_app/data/images.dart';
import 'package:furniture_app/style/text_style.dart';

import '../style/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <String> category=['Chair', 'Bed', 'Living Room','Table'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: AppBar(
        leading: Icon(CupertinoIcons.line_horizontal_3),
        actions: [
          Icon(CupertinoIcons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: cardColor,
              child: Icon(CupertinoIcons.profile_circled),
            ),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children:[ Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFf3fafe)
              ),
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              height: MediaQuery.of(context).size.height/3.5,
            ),
              Positioned(
                right:20,
                bottom: 16,
                child: Image.network(sofa,width: 170,)),
              Positioned(
                  top: 10,
                  left: 30,
                  child: Text('NEW',style: textStyle.copyWith(color: Color(0xCDf3a304)))),
              Positioned(
                  top: 35,
                  left: 40,
                  child: Text('ARRIVALS',style: textStyle,)),
              Positioned(
                bottom: 15,
                left: 50,
                child: Column(
                  children: [
                    Text('COLLECTION',style: bodyTextStyle,),
                    Text('SHOP NOW',style: labelTextStyle,),
                  ],
                ),
              )
            ]
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height:MediaQuery.of(context).size.height/8,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: category.map((items)=>
              CardClass(txt:items)).toList()
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('BEST SELLING',style: textStyle,),
          ),
          CardOfProduct(img: sofa, headText: 'lll', bodyText: 'lpl', price: 23)
        ],
      ),
    );
  }
}

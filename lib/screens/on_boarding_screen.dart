import 'package:flutter/material.dart';
import 'package:furniture_app/screens/first_intro.dart';
import 'package:furniture_app/screens/home_screen.dart';
import 'package:furniture_app/screens/register_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController=PageController();
  List <String> img=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBP47EqY4rh3jJ0PvMUbPkbGZg0lWqC2uKGTRDl4hbk4uAf7YEZp61oZ51lPwhotJW8m8&usqp=CAU'
    , 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOIfH904-q56EuwbKTLMffuSC27Dd4R_xm_PZr8OM6wyp8RRIiy6SIreQZuODoz8aq0qo&usqp=CAU'
    , 'https://cdn.vectorstock.com/i/1000v/87/81/modern-furniture-logo-graphic-trendy-design-vector-46378781.jpg'];
  List <String> txt=['Hello to Our Application' , 'Free ' , 'Lets Go'];
  @override
  Widget build(BuildContext context) {
    bool isLastPage=false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children:[
          PageView(
            onPageChanged: (value) {
                setState(() {
                  isLastPage = (value==2);
                });
            },
            controller: pageController,
            children: txt.length==img.length?
              img.map((v)=>
              FirstIntro(img: v, txt:txt[img.indexOf(v)] )).toList() :
                [Text('ERROR')]
          ),
          Container(
            alignment: Alignment(0, 0.8),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                    onTap: (){
                      pageController.jumpToPage(2);
                    }
                    ,child: Text('S K I P')),
                    SmoothPageIndicator(controller: pageController, count: 3),
                    isLastPage ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomeScreen()), (route)=>false);
                      }
                    ,child: Text('D O N E')): GestureDetector(
                        onTap: () {
                          pageController.nextPage(duration: Duration(microseconds: 300), curve: Curves.bounceIn);
                        }
                        ,child: Text('N E X T'))
                  ],
                ),
              )
          )
        ]
      ),
    );
  }
}

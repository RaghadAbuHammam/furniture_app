import 'dart:async';
import 'package:flutter/material.dart';
import 'package:furniture_app/screens/on_boarding_screen.dart';
import 'package:furniture_app/style/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
      (){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>OnBoardingScreen())
          , (route)=>false);
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.network('https://static.vecteezy.com/system/resources/previews/012/221/591/non_2x/interior-sofa-logo-design-lounge-chair-furniture-logo-design-vector.jpg'),
             CircularProgressIndicator(color: logoColor,)
           ],
         ),
       ),
    );
  }
}

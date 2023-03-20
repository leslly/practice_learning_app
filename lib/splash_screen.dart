import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:practice_learning_app/intro_one.dart';
import 'package:practice_learning_app/utils/global_colours.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
     Navigator.push(context, MaterialPageRoute(builder: (context) => const IntroOne()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // Timer(  Duration(seconds: 2), () {
    //   Get.to(IntroOne());
    // });
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               const   Image(image: AssetImage('assets/blush_images/illustration.png'), height: 264, width: 375,),

                   Text(
                      'CodeFactory',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Rubik-Bold.ttf',
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.bigTextColorBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:practice_learning_app/intro_one.dart';
import 'package:practice_learning_app/utils/global_colours.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer( const Duration(seconds: 2), () {
      Get.to(IntroOne());
    }
      );
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
                  Image.asset(
                    'assets/blush_images/illustration.png',
                    height: 264,
                      width: 375,
                    fit: BoxFit.contain,
                  ),
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
      // bottomNavigationBar: Container(
      //   height: 50,
      //   alignment: Alignment.center,
      //   child: InkWell(
      //     onTap: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPage()));
      //     },
      //     child: const Text(
      //       'CLICK ME',
      //       style: TextStyle(
      //         color: Colors.redAccent,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

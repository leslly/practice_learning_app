import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/start_up/intro.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
        duration: Duration(seconds: 2),
        vsync: this, upperBound: 300.0
    );
    
    animationController.forward();
    animationController.addListener(() {
      setState(() {

      });
      print(animationController.value);
    });

    Future.delayed(const Duration(seconds: 5), () {
     Navigator.push(context, MaterialPageRoute(builder: (context) => const Intro()));
    });
  }

  @override
  void dispose() {
   animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/blush_images/illustration.png'), height: animationController.value),
                   //Tried animating the text and fail miserably https://pub.dev/packages/animated_text_kit
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

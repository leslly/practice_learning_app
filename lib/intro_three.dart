import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'utils/global_button.dart';
import 'login_view.dart';


class IntroThree extends StatelessWidget {
  const IntroThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
                    },
                    child: const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'skip',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Rubik-Medium.ttf',
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/blush_images/illustration(3).png',
                    height: 264,
                    width: 375,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    'Improve your skills',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const Text(
                    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Rubik-Regular.ttf',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 55),
                  GlobalButton(nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => LoginView()));
                  }, text: "Let's Start"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

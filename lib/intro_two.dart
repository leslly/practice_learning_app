import 'package:flutter/material.dart';
import 'package:practice_learning_app/intro_three.dart';
import 'package:practice_learning_app/login_view.dart';
import 'utils/global_button.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({Key? key}) : super(key: key);

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
                    'assets/blush_images/illustration(2).png',
                    height: 264,
                    width: 375,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    'Find a course for you',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const Text(
                    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Rubik-Medium.ttf',
                      //fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 55),
                  GlobalButton(nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => IntroThree()));
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

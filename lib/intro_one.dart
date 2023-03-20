import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_button.dart';
import 'package:practice_learning_app/intro_two.dart';
import 'package:practice_learning_app/login_view.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({Key? key}) : super(key: key);

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
                  Image(image: AssetImage('assets/blush_images/illustration.png')),
                  const Text(
                    'Learn anytime and anywhere',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Quarantine is the perfect time to spend your day learning something new, from anywhere! ',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Rubik-Regular.ttf',
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 55),
                  GlobalButton(nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => IntroTwo()));
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

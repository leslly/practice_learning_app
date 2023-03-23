import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_button.dart';
import 'package:practice_learning_app/start_up/intro_two.dart';
import 'package:practice_learning_app/start_up/login_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16,left: 313, right: 16,bottom: 112),
                    child: Align(
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
                ),
                const Image(image: AssetImage('assets/blush_images/illustration_one.png')),
                const SizedBox(height: 41),
                const Text(
                  'Learn anytime \n and anywhere',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik-Medium.ttf',
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 11),
                const Text(
                  'Quarantine is the perfect time to spend your \n day learning something new, from anywhere! ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Rubik-Regular.ttf',
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 94),
                GlobalButton(nextPage: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const IntroTwo()));
                },
                colorOfText: GlobalColors.whiteTextColor,
                colorOfButton: GlobalColors.buttonColorOrange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

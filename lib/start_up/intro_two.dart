import 'package:flutter/material.dart';
import 'package:practice_learning_app/start_up/intro_three.dart';
import 'package:practice_learning_app/start_up/login_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import '../utils/global_button.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({Key? key}) : super(key: key);

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
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16,left: 314, right: 16,bottom: 112),
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
                const Image(image: AssetImage('assets/blush_images/used.png')),
                const SizedBox(height: 16),
                const Text(
                  'Find a course \n for you',
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
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>  IntroThree()));
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

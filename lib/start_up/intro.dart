import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_button.dart';
import 'package:practice_learning_app/start_up/login_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: GlobalColors.buttonColorwhite,
        title: TextButton(
          onPressed:  () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'skip',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Rubik-Medium.ttf',
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          physics: BouncingScrollPhysics(),
          pageSnapping: true,
          onPageChanged: (index) {
            setState(() {
              currentPage=index;
            });
          },
          children:[
           /////intro one
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/blush_images/long_distance_girls.png')),
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
                SizedBox(height: 40),
                row(),
                const SizedBox(height: 54),
                GlobalButton(
                  nextPage: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginView()),
                            (route) => false);
                  },
                  colorOfText: GlobalColors.whiteTextColor,
                  colorOfButton: GlobalColors.buttonColorOrange,
                ),
              ],
            ),
            /////intro two
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(height: 40),
                row(),
                const SizedBox(height: 54),
                GlobalButton(
                  nextPage: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginView()),
                            (route) => false);
                  },
                  colorOfText: GlobalColors.whiteTextColor,
                  colorOfButton: GlobalColors.buttonColorOrange,
                ),
              ],
            ),
            /////intro three
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/blush_images/used_two.png')),
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
                SizedBox(height: 40),
                row(),
                const SizedBox(height: 54),
                GlobalButton(
                  nextPage: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginView()),
                            (route) => false);
                },
                  colorOfText: GlobalColors.whiteTextColor,
                  colorOfButton: GlobalColors.buttonColorOrange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentPage==0?Icon(Icons.circle,size: 10,color: Colors.orange,):Icon(Icons.circle_outlined, size: 10, color: Colors.orange,),
        currentPage==1?Icon(Icons.circle,size: 10,color: Colors.orange,):Icon(Icons.circle_outlined, size: 10, color: Colors.orange,),
        currentPage==2?Icon(Icons.circle,size: 10,color: Colors.orange,):Icon(Icons.circle_outlined, size: 10, color: Colors.orange,),
      ],
    );
  }

}

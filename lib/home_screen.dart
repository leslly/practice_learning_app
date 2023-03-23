import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Leslie Teniola',
                      style: TextStyle(
                        fontSize: 32,
                        color: GlobalColors.bigTextColorBlack,
                        fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                      ),
                    ),
                    SizedBox(width: 24),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                         'assets/blush_icons/Notification.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

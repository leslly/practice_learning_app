import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          'Login with social networks',
          style: TextStyle(
            fontFamily: 'Rubik-Regular',
            fontSize: 14,
            color: GlobalColors.smallTextColorGrey,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          child: Row(
            children: [
              /////facebook
              Expanded(
                child: Container(
                  height: 55,
                  width: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/blush_image/Social Buttons(2).png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              /////instagram
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/blush_image/Social Buttons(1).png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              /////google
              Expanded(
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/blush_image/social_buttons.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

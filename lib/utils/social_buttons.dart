import 'package:flutter/material.dart';
import 'package:practice_learning_app/utils/global_colours.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text(
          'Login with social networks',
          style: TextStyle(
            fontFamily: 'Rubik-Regular',
            fontSize: 14,
            color: GlobalColors.smallTextColorGrey,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          width: 144,
          child: Row(
            children: [
              /////facebook
              Expanded(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/blush_icons/social_buttons_one.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              /////instagram
              Expanded(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/blush_icons/social_buttons_one.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              /////google
              Expanded(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/blush_icons/social_buttons.png',
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

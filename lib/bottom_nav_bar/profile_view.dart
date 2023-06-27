import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_learning_app/authentication/auth_repo.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:practice_learning_app/other_screens/cart/cart_view.dart';
import 'package:practice_learning_app/other_screens/Payment/no_payment_method.dart';
import 'package:practice_learning_app/settings_functions/settings_view.dart';
import 'package:practice_learning_app/start_up/login_view.dart';
import 'package:practice_learning_app/utils/global_button.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 0;
    final courseProvider = context.watch<IndexProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GlobalColors.buttonColorwhite,
      appBar: AppBar(
        backgroundColor: GlobalColors.buttonColorwhite,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: GlobalColors.borderGrey,
                ),
              ),
              child: Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title:  Text(
          'Profile',
          style: TextStyle(
            color: GlobalColors.bigTextColorBlack,
            fontSize: 24,
            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        toolbarHeight: 84,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: GlobalColors.profileBackground,
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: GlobalColors.profileBorder),
                  image: const DecorationImage(
                    image: AssetImage('assets/blush_images/cool_kids_bust.png'),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              GlobalButton(
                nextPage: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Cart(course: courseProvider.courses[index])));
                },
                text: 'Cart',
                fontSize: 24,
                colorOfButton: GlobalColors.buttonColorwhite,
                colorOfText: Colors.black,
              ),
              const SizedBox(height: 16),
              GlobalButton(
                nextPage: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NoPayment()));
                },
                text: 'Payments',
                fontSize: 24,
                colorOfButton: GlobalColors.buttonColorwhite,
                colorOfText: Colors.black,
              ),
              const SizedBox(height: 16),
              GlobalButton(
                nextPage: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()));
                },
                text: 'Settings',
                fontSize: 24,
                colorOfButton: GlobalColors.buttonColorwhite,
                colorOfText: Colors.black,
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  AuthenticationRepository.instance.logout();
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (ctx) {
                    return LoginView();
                  }), (route) => false);
                  // it does sign ou but does not redirect back to login page
                },
                child:  Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    fontFamily: 'Rubik-Medium.ttf',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

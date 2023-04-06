import 'package:flutter/material.dart';
import 'package:practice_learning_app/index/index.dart';
import 'package:practice_learning_app/index/home_screen_two.dart';
import 'package:practice_learning_app/start_up/sign_up_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/social_buttons.dart';
import 'package:practice_learning_app/utils/text_form_global.dart';
import '../utils/global_button.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.buttonColorwhite,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.only(right: 16, left: 16, top: 52, bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/blush_images/login_view.jpg',
                    height: 253,
                    width: 343,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik-Medium.ttf',
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.bigTextColorBlack,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SocialLogins(),
                  const SizedBox(height: 16),
                  TextFormGlobal( controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                    obscure: false,
                    icon: null,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  const SizedBox(height: 16),
                  TextFormGlobal( controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.text,
                    obscure: true,
                    //icon: CupertinoIcons.eye,
                    radius: 12,
                    height: 53,
                    width: 343,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                      color: GlobalColors.smallTextColorGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  GlobalButton(
                      nextPage: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage() ));
                    },
                    text: "Log in",
                    colorOfText: GlobalColors.whiteTextColor,
                    colorOfButton: GlobalColors.buttonColorOrange,
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView() ));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Rubik-Medium.ttf',
                        color: GlobalColors.smallTextColorGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

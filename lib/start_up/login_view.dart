import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_learning_app/course/index.dart';
import 'package:practice_learning_app/start_up/sign_up_view.dart';
import 'package:practice_learning_app/utils/global_colours.dart';
import 'package:practice_learning_app/utils/social_buttons.dart';
import 'package:practice_learning_app/utils/text_form_global.dart';
import '../controllers/sign_up_controller.dart';
import '../main.dart';
import '../utils/global_button.dart';
import '../widgets/forgot_pwd.dart';
import '../widgets/utils.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(SignUpController());
  final formKey = GlobalKey<FormState>();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SignUpController());
    // final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(
                    right: 16, left: 16, top: 52, bottom: 0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/blush_images/login_view.jpg',
                        height: 253,
                        width: 343,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 16),
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
                      TextFormGlobal(
                        controller: controller.email,
                        text: 'Email',
                        textInputType: TextInputType.emailAddress,
                        obscure: false,
                        icon: null,
                        radius: 12,
                        height: 53,
                        width: 343,
                        autovalidatemode: AutovalidateMode.onUserInteraction,
                        validator: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? 'Enter a valid email'
                                : null,
                        textinputaction: TextInputAction.done,
                      ),
                      const SizedBox(height: 16),
                      TextFormGlobal(
                        controller: controller.password,
                        text: 'Password',
                        textInputType: TextInputType.text,
                        obscure: true,
                        //icon: CupertinoIcons.eye,
                        radius: 12,
                        height: 53,
                        width: 343,
                        autovalidatemode: AutovalidateMode.onUserInteraction,
                        validator: (pwd) => pwd != null && pwd.length < 6
                            ? 'Password cannot be less than 6 characters'
                            : null,
                        textinputaction: TextInputAction.next,
                      ),
                      const SizedBox(height: 16),
                      ///// FORGOT PASSWORD
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: Center(
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily:
                                  'assets/blush_fonts/Rubik/Rubik-Medium.ttf',
                              color: GlobalColors.smallTextColorGrey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ///// LOG IN
                      GlobalButton(
                        nextPage: () {
                          logIn();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                              (route) => false);
                          // LOGIN FUNCTION
                        },
                        text: "Log in",
                        colorOfText: GlobalColors.whiteTextColor,
                        colorOfButton: GlobalColors.buttonColorOrange,
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpView()));
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
        ),
      ),
    );
  }

  // login with email and password
  Future logIn() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
    controller.email.clear();
    controller.password.clear();

    // showDialog(
    //   barrierDismissible: false,
    //   builder: (context) => const Center(child: CircularProgressIndicator()),
    //   context:context,
    //   // not build context context
    // );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: controller.email.text,
        password: controller.password.text,
      );
    } on FirebaseAuthException catch (e) {
      // print(e);

      Utils.showSnackBar(e.message);
    }

    // Navigator of context not working - only the navigator key will work here, but why ?
    // navigatorKey.currentState!.popUntil((route) => route.isFirst);
    //Navigator.of(context).popUntil((route) => route.isFirst);
    // navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}

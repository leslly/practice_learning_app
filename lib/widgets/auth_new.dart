// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:practice_learning_app/start_up/login_view.dart';
// import 'package:practice_learning_app/start_up/sign_up_view.dart';
//
// import '../controllers/sign_up_controller.dart';
//
// class AuthNew {
//
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   User? get currentUser => _auth.currentUser;
//
//   final controller = Get.put(SignUpController());
//
//   // Sign in with email and password
//   Future<User?> getOrCreateUser(String email, String password) async {
//
//     if (currentUser == null) {
//       await _auth.signInWithEmailAndPassword(email: email, password: password);
//     }
//     return currentUser;
//   }
// }
//
// class AuthPage extends StatefulWidget {
//   const AuthPage({Key? key}) : super(key: key);
//
//   @override
//   State<AuthPage> createState() => _AuthPageState();
// }
//
// class _AuthPageState extends State<AuthPage> {
//
//   bool isLogin = true;
//
//   @override
//   Widget build(BuildContext context) => isLogin ? LoginView() : SignUpView();
//
// // toggle() => setState(() => isLogin = !isLogin );
//
// }

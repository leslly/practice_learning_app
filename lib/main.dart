import 'package:flutter/material.dart';
import 'package:practice_learning_app/start_up/splash_screen.dart';
import 'package:provider/provider.dart';
import 'other_screens/cart/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner : false,
        title: 'codeFactory',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}


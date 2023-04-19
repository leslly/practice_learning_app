import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:practice_learning_app/start_up/splash_screen.dart';
import 'package:practice_learning_app/yourCourses/providers/lessons_provider.dart';
import 'package:practice_learning_app/yourCourses/providers/test_provider.dart';
import 'package:practice_learning_app/yourCourses/providers/your_course_provider.dart';
import 'package:provider/provider.dart';

import 'other_screens/cart/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => IndexProvider()),
        ChangeNotifierProvider(create: (context) => YourCourseProvider()),
        ChangeNotifierProvider(create: (context) => LessonProvider()),
        ChangeNotifierProvider(create: (context) => TestProvider()),
      ],
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


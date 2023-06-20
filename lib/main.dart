import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:practice_learning_app/authentication/auth_repo.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:practice_learning_app/start_up/splash_screen.dart';
import 'package:practice_learning_app/theme/dark_theme.dart';
import 'package:practice_learning_app/theme/light_theme.dart';
import 'package:practice_learning_app/yourCourses/providers/lessons_provider.dart';
import 'package:practice_learning_app/yourCourses/providers/test_provider.dart';
import 'package:practice_learning_app/yourCourses/providers/your_course_provider.dart';
import 'package:provider/provider.dart';
import 'other_screens/cart/cart_provider.dart';
import 'package:firebase_core/firebase_core.dart';


// once dependencies are imported, use one below
 void main() async {
     WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp()
          .then((value) => Get.put(AuthenticationRepository()));
      runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

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
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const SplashScreen(),
      ),
    );
  }
}


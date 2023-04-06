import 'package:flutter/material.dart';
import 'test_model.dart';

class   TestProvider extends ChangeNotifier {
  final tests = [
   Test(
       testTitle: 'Tags For Headers',
       testDescription: "Let’s put your memory on this topic test. Solve tasks and check knowledge.",
       quiz: "quiz 1",
       testImage: 'assets/blush-images/cool_plant.png',
   ),
  ];
  var testIndex = 1;

  changeIndex(index){
    this.testIndex = index;
    notifyListeners();
  }
}
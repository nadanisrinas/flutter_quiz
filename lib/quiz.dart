import 'package:challenge2/quiz_screen.dart';
import 'package:challenge2/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  // Widget? activeScreen;


  @override
  void initState() {
    // activeScreen = StartScreen(switchScreen);
    super.initState();
  }

    void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
      // activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'? StartScreen(switchScreen): const QuestionScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget= const QuestionScreen();
    }

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 142, 72, 223),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: screenWidget,
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/tiger.png',
            width: 300,
            // color: Colors.red,
          ),
          const SizedBox(),
          const Text('Learn Flutter the fun way!', style: TextStyle(
            color: Color.fromARGB(255, 237, 223, 252),
            fontSize: 24
          ),),
          OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text('start quiz'),
          icon: const Icon(Icons.arrow_right_alt)
          )

        ],
      ),
    );
  }
}

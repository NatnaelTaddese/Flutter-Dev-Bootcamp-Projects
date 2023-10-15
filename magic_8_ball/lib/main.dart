import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Ask Me Anything",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: HomeBody(),
      backgroundColor: Colors.blue,
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  Random random = Random();

  int guessAnswer = 1;
  void randomizeGuess() {
    guessAnswer = random.nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                randomizeGuess();
              });
            },
            child: Image.asset('images/ball$guessAnswer.png'),
          ),
        ),
      ),
    );
  }
}

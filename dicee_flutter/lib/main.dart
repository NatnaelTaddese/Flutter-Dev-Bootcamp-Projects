import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true, colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
          backgroundColor: Colors.red[800],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final int maxDice = 6;
  final int minDice = 1;

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  Random random = Random();

  int generateDiceNumber() {
    int randomNumber =
        random.nextInt(maxDice) + minDice; // random number from 1 to six
    return randomNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = generateDiceNumber();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = generateDiceNumber();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          FilledButton(
            onPressed: () {
              setState(() {
                rightDiceNumber = generateDiceNumber();
                leftDiceNumber = generateDiceNumber();
              });
            },
            onLongPress: () {
              setState(() {
                rightDiceNumber = 1;
                leftDiceNumber = 1;
              });
            },
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
            color: Colors.redAccent[300],
            child: const ListTile(
              leading: Icon(Icons.tips_and_updates),
              title: Center(child: Text('Long-press to reset the Dices')),
            ),
          )
        ],
      ),
    );
  }
}

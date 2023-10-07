import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am Rich'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/images/mikeohearn.gif'),
        ),
      ),
      backgroundColor: Colors.blueGrey[300],
    ),
  ));
}

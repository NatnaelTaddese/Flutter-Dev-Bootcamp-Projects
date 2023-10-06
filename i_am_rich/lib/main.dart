import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("I am Rich"),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/0/00/Diamond_4.jpg'),
        ),
      ),
      backgroundColor: Colors.blueGrey[300],
    ),
  ));
}

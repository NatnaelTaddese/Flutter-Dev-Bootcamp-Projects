import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Cepheus got hacked, Lmao"),
        ),
        backgroundColor: Colors.black26,
      ),
      backgroundColor: Colors.grey[800],
      body: const Center(
        child: Image(
          image: AssetImage('assets/images/nico_laugh.gif'),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.grey,
      ),
    ),
  ));
}

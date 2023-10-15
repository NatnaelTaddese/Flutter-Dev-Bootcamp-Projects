import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylo'),
        ),
        body: SafeArea(
          child: AudioPage(),
        ),
      ),
    );
  }
}

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note1.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note2.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note3.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.yellow),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note4.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note5.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note6.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioPlayer();
                player.stop();
                player.play(AssetSource('note7.wav'));
              },
              child: Text(''),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}

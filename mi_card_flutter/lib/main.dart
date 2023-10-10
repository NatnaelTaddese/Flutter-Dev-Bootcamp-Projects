import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: const CircleAvatar(
                  radius: 90,
                  foregroundImage: AssetImage('assets/images/worldwide.png'),
                ),
              ),
              const Text(
                'Mr WorldWide',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa'),
              ),
              const Text(
                'Let me Rock you!',
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Inter'),
              ),
              SizedBox.fromSize(
                child: Divider(color: Colors.blueGrey),
                size: const Size(250, 10),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                color: Colors.blueGrey,
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '+153 6434 4543',
                        style: TextStyle(
                            fontFamily: 'Inter', fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FilledButton(
                        onPressed: null,
                        child: Text('Call'),
                      ),
                    ],
                  ),
                ),
              ),
              const Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                color: Colors.blueGrey,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.mail_rounded),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'mrworldwide@mail.com',
                        style: TextStyle(
                            fontFamily: 'Inter', fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      FilledButton(
                        onPressed: null,
                        child: Text('Mail'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.blueAccent,
//         body: SafeArea(
//           child: Column(
//             // for more flutter alignments, check out :
//             // https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 100,
//                 height: 100,
//                 margin:
//                 const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                 color: Colors.redAccent,
//                 child: const Text("Home"),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.grey,
//                 child: const Text('Balconny'),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.blueGrey,
//                 child: const Text('Eulala'),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.cyanAccent,
//                 child: const Text('User'),
//               ),
//               Icon(Icons.add_circle_outline, size: 50)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: AskMePage(),
      ),
    ),
  );
}

class AskMePage extends StatefulWidget {
  @override
  _AskMePageState createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  @override
  int no = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  no = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$no.png'),
            ),
          ),
        ],
      ),
    );
  }
}

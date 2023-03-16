import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magic Balls'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: TextButton(
          onPressed: () {
            changeBall();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}

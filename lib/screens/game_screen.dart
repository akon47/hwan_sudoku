import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key, required this.stage}) : super(key: key);

  final int stage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game'),
      ),
      body: Column(children: [
        Center(
          child: Text('Game Stage - $stage'),
        ),
      ]),
    );
  }
}

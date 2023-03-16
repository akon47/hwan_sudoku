import 'package:flutter/material.dart';

class GameView extends StatelessWidget {
  const GameView(this.stage, {Key? key}) : super(key: key);

  final int stage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: Column(children: [
        Center(
          child: Text('Game Stage - $stage'),
        ),
      ]),
    );
  }
}
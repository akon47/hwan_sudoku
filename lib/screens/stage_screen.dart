import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StageScreen extends StatelessWidget {
  const StageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stage'),
      ),
      body: Column(children: const [
        Center(
          child: Text('Stage'),
        ),
      ]),
    );
  }
}

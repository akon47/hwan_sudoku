import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_screen.dart';

class StageScreen extends StatelessWidget {
  const StageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stage'),
      ),
      body: Center(
        child: Column(
          children: Iterable<int>.generate(10)
              .map((y) => Row(
                    children: Iterable<int>.generate(8)
                        .map(
                          (x) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              width: 80,
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          GameScreen(stage: y * 10 + x),
                                    ),
                                  );
                                },
                                child: Text('${(y * 10 + x) + 1}'),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hwan_sudoku/screens/stage_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hwan\'Sudoku'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 80),
                child: Text('Hwan\'Sudoku',
                    style:
                        TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                minHeight: 50.0,
                maxWidth: 300.0,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StageScreen()),
                      );
                    },
                    child: const Text(
                      'New Game',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

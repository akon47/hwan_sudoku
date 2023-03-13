import 'package:flutter/material.dart';
import 'package:hwan_sudoku/screens/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          labelLarge: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    ),
  );
}

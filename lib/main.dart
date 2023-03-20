import 'package:flutter/material.dart';
import 'package:hwan_sudoku/repository/common_repository.dart';
import 'package:hwan_sudoku/view/main_view.dart';
import 'package:hwan_sudoku/view_models/main_view_model.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() {
  setupLocator();

  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(
          commonRepo: locator<CommonRepository>(),
        ),
        child: const MainView(),
      ),
      theme: ThemeData(
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    ),
  );
}

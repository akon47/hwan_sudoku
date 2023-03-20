import 'dart:developer';

import 'package:hwan_sudoku/repository/common_repository.dart';

import 'common/page_view_model.dart';

class MainViewModel extends PageViewModel {
  MainViewModel({
    required this.commonRepo,
  }) : super(title: 'Hwan\'Sudoku') {
    log('MainViewModel');
  }

  final CommonRepository commonRepo;

  void test() {
    title += '!';
    notifyListeners();
  }
}

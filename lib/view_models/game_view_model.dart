import 'dart:developer';

import 'package:flutter/foundation.dart';

import 'common/page_view_model.dart';

class GameViewModel extends PageViewModel {
  GameViewModel(this.stage) : super(title: 'GameView') {
    log('GameViewModel');
  }

  final int stage;
  final List<CellViewModel> cells = List.generate(9 * 9, (_) => CellViewModel());
}

class CellViewModel extends ChangeNotifier {

}
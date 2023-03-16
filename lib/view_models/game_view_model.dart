import 'package:flutter/foundation.dart';

import 'common/page_view_model.dart';

class GameViewModel extends PageViewModel {
  GameViewModel(this.stage) : super(title: 'GameView');

  final int stage;
}

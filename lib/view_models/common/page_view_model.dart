import 'package:flutter/foundation.dart';

class PageViewModel extends ChangeNotifier {
  PageViewModel({
    required this.title,
  });

  String title;
}

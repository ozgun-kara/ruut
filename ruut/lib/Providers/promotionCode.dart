import 'package:flutter/material.dart';

class PromotionCode with ChangeNotifier {
  int selectedCode = 0;

  void updateValue(int codeIndex) {
    selectedCode = codeIndex;
    notifyListeners();
  }
}

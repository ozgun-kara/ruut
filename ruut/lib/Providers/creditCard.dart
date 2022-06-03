import 'package:flutter/material.dart';

class CreditCard with ChangeNotifier {
  int selectedCard = 0;

  void updateValue(int cardIndex) {
    selectedCard = cardIndex;
    notifyListeners();
  }
}
